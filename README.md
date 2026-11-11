## QR Code Toy

基于 Expo SDK49 / React Native 0.72 的原生二维码工具，支持相机扫码、图片扫码与文本二维码生成。

使用已完成配对发布的正式 Calcit 0.41.0 / `@calcit/procs@0.41.0`、Node.js 24 和 Yarn 4.18.0。
采用当前 Calcit 数据声明语法。隐藏扫码背后的主界面和空二维码时，显式向 React 传递 null；扫码结果继续用 Option 区分尚无结果和空字符串。
升级时同步安装 runtime 并重新生成 JS；不混用旧 alpha 产物。保留 Expo49 / React Native0.72，
此次不迁移 Expo SDK、设备权限或商店发布流程；相机/相册仍需要原权限与真机验收。
原 lock 中四个原生模块超出 SDK49 的兼容声明，现按 Expo 自带版本检查对齐：
扫码器12.5.x、图片选择14.3.x、状态栏1.6.x、SVG13.9.0，并将 React Native 补丁升级到
在线 SDK49 检查要求的0.72.10（仍配对 React18.2.0）；前四项是保持 SDK49 合同的兼容回退，
不是升级到最新 Expo SDK。导出资源和 Hook 测试不等于真机扫码/图片选择已经通过。
新解析出的 npm 版本须已发布至少 60 分钟，无单包例外；已有 immutable 锁版本不重新计算年龄。
源码为 `calcit.cirru`，依赖声明为 `deps.cirru`；`js-out/` 是本地生成文件，不提交。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check
yarn build
yarn test
yarn android
```

`yarn start`、`yarn android`、`yarn ios` 和 `yarn web` 会先生成未入库的
`js-out/`；开发时可在另一个终端执行 `yarn watch` 持续更新。

`yarn build` 编译一次 Calcit，并分别导出 Android/iOS 的 Metro/Hermes 资源到
`dist/android` 和 `dist/ios`。CI 验证类型与双平台资源构建，不打包 APK/IPA、不提交商店发布。
项目没有已有的静态前端 COS 部署，本次不新增 COS/CDN 路径或改变 EAS 原生发布配置。

状态 Hook 使用泛型 `Ref<T>` 和 setter，布尔扫描状态、字符串草稿、`Option<String>`
扫描结果不再共用抹除类型的 Dynamic trait。`hooks.mjs` 只桥接 React 的稳定 Hook
与 element/fragment API；可变 children 在这个边界转为 JS 数组，相关上游限制见
[calcit #2209](https://github.com/calcit-lang/calcit/issues/2209)。关闭按钮直接使用同一组静态样式，移除了原 `Object.assign` 的类型强转。

`yarn check` 包含全部定义和完整 strict；原三个命名空间均已由 all-defs 覆盖，不重复检查。`yarn test`
会先编译所需的 `js-out/`，可在干净安装后独立运行，再使用匹配 React 18.2 的 renderer，
验收真实 Hook 的连续切换、Unicode 草稿及 Option 结果。
它不模拟相机、相册或设备权限，也不代替 Android/iOS 真机验收。
File 选择使用 SDK49 的正确参数 `allowsEditing`（旧写法 `allowEditing` 不生效）；
取消选择时 Android 保持 toast，iOS 不套用缺少 `SHORT` 常量的 Android 专用接口。

Expo49 的 Babel 配置显式启用 import attributes，以解析正式 Calcit runtime 的 JSON 导入。
保留现有 Expo/React Native 主版本，不通过 alpha、hash 依赖或修改 runtime 源码绕过构建。

### License

MIT
