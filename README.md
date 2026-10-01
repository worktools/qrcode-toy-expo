## QR Code Toy

基于 Expo SDK49 / React Native 0.72 的原生二维码工具，支持相机扫码、图片扫码与文本二维码生成。

使用正式 Calcit `0.27.0` / `@calcit/procs@0.27.0`、Node.js 24 和 Yarn 4.18.0。
源码为 `calcit.cirru`，依赖声明为 `deps.cirru`；`js-out/` 是本地生成文件，不提交。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check
yarn compile
yarn android
```

开发时在另一个终端执行 `yarn watch`；iOS 启动使用 `yarn ios`。

`yarn build` 编译一次 Calcit，并分别导出 Android/iOS 的 Metro/Hermes 资源到
`dist/android` 和 `dist/ios`。CI 验证类型与双平台资源构建，不打包 APK/IPA、不提交商店发布。
项目没有已有的静态前端 COS 部署，本次不新增 COS/CDN 路径或改变 EAS 原生发布配置。

Expo49 的 Babel 配置显式启用 import attributes，以解析正式 Calcit runtime 的 JSON 导入。
保留现有 Expo/React Native 主版本，不通过 alpha、hash 依赖或修改 runtime 源码绕过构建。

### License

MIT
