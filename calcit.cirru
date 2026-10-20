
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        '%draft-plugin-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def %draft-plugin-actions (impl-traits DraftPluginState DraftPluginImpl)
          :examples $ []
          :schema $ :: 'EnumDef
        'BarcodeEvent $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait BarcodeEvent (:data 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'BarcodeResults $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait BarcodeResults (:length 'Number) (:first 'app.comp.container/BarcodeEvent)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :first |0
          :schema $ :: 'Trait
        'DraftPluginImpl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl DraftPluginImpl DraftPluginOps
            .render $ fn (self)
              hint-fn $ {}
                :args $ [] 'app.comp.container/DraftPluginState
                :return 'JsObject
              match self $
                :draft-plugin node draft visibility
                , node
            .show $ fn (self)
              hint-fn $ {}
                :args $ [] 'app.comp.container/DraftPluginState
                :return 'Unit
              match self $
                :draft-plugin node draft visibility
                .set! visibility true
            .hide $ fn (self)
              hint-fn $ {}
                :args $ [] 'app.comp.container/DraftPluginState
                :return 'Unit
              match self $
                :draft-plugin node draft visibility
                .set! visibility false
            .get $ fn (self)
              hint-fn $ {}
                :args $ [] 'app.comp.container/DraftPluginState
                :return 'String
              match self $
                :draft-plugin node draft visibility
                .deref draft
          :examples $ []
          :schema $ :: 'Impl
        'DraftPluginOps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DraftPluginOps
            .render $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DraftPluginState
              :return 'JsObject
            .show $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DraftPluginState
              :return 'Unit
            .hide $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DraftPluginState
              :return 'Unit
            .get $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/DraftPluginState
              :return 'String
          :examples $ []
          :schema $ :: 'Trait
        'DraftPluginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum DraftPluginState
            :draft-plugin 'JsObject (:: 'app.core/%Atom 'String) (:: 'app.core/%Atom 'Bool)
          :examples $ []
          :schema $ :: 'EnumDef
        'ImageAsset $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ImageAsset (:uri 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'ImagePickerResult $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ImagePickerResult (:canceled 'Bool)
            :assets $ :: 'JsNullish 'JsArray
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'PermissionStatus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait PermissionStatus (:status 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'PlatformHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait PlatformHost (:OS 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'ToastHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ToastHost (:SHORT 'Number)
            .show $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/ToastHost 'String 'Number
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (props e)
            let
                *permission $ use-atom false
                *show-scan $ use-atom false
                *result $ use-atom $ assert-type (Option :none) (:: 'Option 'String)
                draft-plugin $ use-draft-plugin $ fn (content)
                  hint-fn $ {}
                    :args $ [] 'String
                    :return 'Unit
                  .set! *result $ Option :some content
              React/useEffect
                fn () $ let
                    get-permissions $ fn ()
                      hint-fn $ {}
                        :args $ []
                        :return 'Unit
                        :async true
                        :features $ #{} :js-ffi
                      let
                          status $ js-cast
                            js-await $ .!requestPermissionsAsync BarCodeScanner
                            , 'app.comp.container/PermissionStatus
                        .set! *permission $ = (.-status status) |granted
                  get-permissions
                  , js/undefined
                js[]
              <><>
                <> StatusBar $ js{} $ :style |light
                comp-scan *show-scan $ fn (content)
                  let
                      c $ .trim content
                    .set! *result $ Option :some c
                if
                  not $ .deref *show-scan
                  <> View
                    js{} $ :style $ js{} (:paddingTop 40) (:paddingLeft 20) (:backgroundColor |#eee) (:height |100%)
                    <> View (js{})
                      <> Text
                        js{} $ :style $ js{} (:fontFamily |monospace) (:marginBottom 12)
                        str "|Scan result: " $ match (.deref *result)
                          (:some text) (js/JSON.stringify text)
                          (:none) |null
                    <> View
                      js{} $ :style $ js{} (:flexDirection |row) (:gap 8)
                      if (.deref *permission)
                        <> Button $ js{} (:title |Scan)
                          :onPress $ fn (e) (.swap! *show-scan not)
                        <> Text (js{})
                          str-spaced "|No permission" $ .deref *permission
                      <> Button $ js{} (:title |File)
                        :onPress $ fn (e)
                          hint-fn $ {}
                            :args $ [] 'Dynamic
                            :return 'Unit
                            :async true
                            :features $ #{} :js-ffi
                          let
                              result $ js-cast
                                js-await $ launchImageLibraryAsync $ js{} (:allowsEditing true) (:quality 1)
                                , 'app.comp.container/ImagePickerResult
                            if (.-canceled result)
                              when
                                =
                                  .-OS $ js-cast Platform 'app.comp.container/PlatformHost
                                  , |android
                                let
                                    toast $ js-cast ToastAndroid 'app.comp.container/ToastHost
                                  .!show toast "|cancelled by user" $ .-SHORT toast
                                , &unit
                              let
                                  assets $ .-assets result
                                if (js-present? assets)
                                  let
                                      asset $ js-cast (.-0 assets) 'app.comp.container/ImageAsset
                                      results $ js-cast
                                        js-await $ .!scanFromURLAsync BarCodeScanner $ .-uri asset
                                        , 'app.comp.container/BarcodeResults
                                    if
                                      > (.-length results) 0
                                      .set! *result $ Option :some $ read-barcode-data (.-first results)
                            , &unit
                      <> Button $ js{} (:title |Text)
                        :onPress $ fn (e) (.show draft-plugin)
                    let
                        content $ .unwrap-or (.deref *result) |
                      if
                        not $ blank? content
                        <> View
                          js{} $ :style $ js{} (:marginTop 16)
                          <> QRCode $ js{} (:value content) (:size 320)
                    .render draft-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] 'JsObject 'Dynamic
            :features $ #{} :js-ffi
        'comp-scan $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-scan (*show-scan on-scan)
            <> Modal
              js{} (:animationType |fade) (:transparent true)
                :visible $ .deref *show-scan
                :onRequestClose $ fn () $ .set! *show-scan false
              <> BarCodeScanner $ js{}
                :onBarCodeScanned $ fn (info)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
                    :features $ #{} :js-ffi
                  js/console.log |Scaned info
                  .set! *show-scan false
                  on-scan $ read-barcode-data info
                :style $ js{} (:width |100%) (:height |100%) (:backgroundColor "|hsla(0,0%,0%,0.7)")
              <> Pressable
                js{}
                  :style $ style-merge style-press-button style-close-position
                  :onPress $ fn (e) (.set! *show-scan false)
                <> Text
                  js{} $ :style $ js{} (:color |#fff)
                  , |Close
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ [] (:: 'app.core/%Atom 'Bool)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'String
            :features $ #{} :js-ffi
        'read-barcode-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-barcode-data (info)
            hint-fn $ {}
              :args $ [] 'Dynamic
              :return 'String
              :features $ #{} :js-ffi
            let
                event $ js-cast info 'app.comp.container/BarcodeEvent
              .-data event
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'style-close-position $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-close-position
            js{} (:position |absolute) (:top 40) (:right 20)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-merge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn style-merge (& args)
            hint-fn $ {}
              :args $ []
              :rest 'JsObject
              :return 'JsObject
              :features $ #{} :js-ffi
            let
                assign $ unsafe-coerce js/Object.assign $ :: 'Fn
                  {}
                    :args $ [] 'JsObject
                    :rest 'JsObject
                    :return 'JsObject
              assign (js{}) & args
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'JsObject) (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'style-press-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-press-button
            js{} (:backgroundColor |#555) (:color |#fff) (:justifyContent |center) (:alignItems |center) (:width 80) (:height 40)
          :examples $ []
          :schema $ :: 'Dynamic
        'use-draft-plugin $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-draft-plugin (on-submit)
            let
                *draft $ use-atom |
                *show? $ use-atom false
                node $ <> Modal
                  js{}
                    :visible $ .deref *show?
                    :onRequestClose $ fn () $ .set! *show? false
                    :animationType |fade
                    :transparent true
                  <> View
                    js{} $ :style $ js{} (:justifyContent |center) (:alignItems |center) (:flex 1) (:backgroundColor "|hsla(0,0%,0%,0.6)")
                    <> View
                      js{} $ :style $ js{} (:marginTop 8) (:flexDirection |column) (:gap 8) (:backgroundColor |#fff) (:borderWidth 1) (:padding 8) (:borderRadius 8)
                      <> TextInput $ js{}
                        :value $ .deref *draft
                        :style $ js{} (:borderWidth 1) (:width 260) (:paddingHorizontal 8)
                        :placeholder "|raw text"
                        :onChangeText $ fn (raw)
                          let
                              t $ decode-map-as raw 'String
                            ; js/console.log |Change t
                            .set! *draft t
                      <> View
                        js{} $ :style $ js{}
                          :style $ js{} (:flexDirection :row) (:justifyContent |space-between) (:gap 8)
                        <> View $ js{}
                        <> View
                          js{} $ :style $ js{}
                          <> Button $ js{} (:title |Submit)
                            :onPress $ fn (e)
                              on-submit $ .deref *draft
                              .set! *show? false
              %:: %draft-plugin-actions :draft-plugin node *draft *show?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.container/%draft-plugin-actions)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (|react :as React)
            |react-native :refer $ View Modal Button ToastAndroid Text StyleSheet ScrollView SafeAreaView Pressable TextInput Platform
            |expo-barcode-scanner :refer $ BarCodeScanner
            app.core :refer $ <> <><> use-atom js{} js[]
            |react-native-qrcode-svg :default QRCode
            |expo-status-bar :refer $ StatusBar
            |expo-image-picker :refer $ launchImageLibraryAsync
    'app.core $ %{} 'FileEntry
      :defs $ {}
        '%Atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def %Atom (impl-traits AtomState HookAtomImpl)
          :examples $ []
          :schema $ :: 'EnumDef
        '<> $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn <> (component props & children)
            hint-fn $ {}
              :args $ [] 'Dynamic 'Dynamic
              :rest 'Dynamic
              :return 'JsObject
              :features $ #{} :js-ffi
            let
                host $ js-cast hooks 'app.core/ReactHooksHost
              .element host component props $ js-array & children
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        '<><> $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn <><> (& args)
            let
                host $ js-cast hooks 'app.core/ReactHooksHost
              .fragment host $ js-array & args
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'AtomState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum AtomState ([] 'T)
            :atom (:: 'Ref 'T)
              :: 'Fn $ {}
                :args $ [] 'T
                :return 'Unit
          :examples $ []
          :schema $ :: 'EnumDef
        'HookAtomImpl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl HookAtomImpl HookAtomOps
            .deref $ fn (self)
              hint-fn $ {}
                :generics $ [] 'T
                :args $ [] $ :: 'app.core/AtomState 'T
                :return 'T
              match self $
                :atom cell setter
                , @cell
            .set! $ fn (self value)
              hint-fn $ {}
                :generics $ [] 'T
                :args $ [] (:: 'app.core/AtomState 'T) 'T
                :return 'Unit
              match self $
                :atom cell setter
                do (reset! cell value) (setter value)
            .swap! $ fn (self transform)
              hint-fn $ {}
                :generics $ [] 'T
                :args $ [] (:: 'app.core/AtomState 'T)
                  :: 'Fn $ {}
                    :args $ [] 'T
                    :return 'T
                :return 'Unit
              match self $
                :atom cell setter
                let
                    value $ transform @cell
                  reset! cell value
                  setter value
          :examples $ []
          :schema $ :: 'Impl
        'HookAtomOps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HookAtomOps
            .deref $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] $ :: 'app.core/AtomState 'T
              :return 'T
            .set! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] (:: 'app.core/AtomState 'T) 'T
              :return 'Unit
            .swap! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] (:: 'app.core/AtomState 'T)
                :: 'Fn $ {}
                  :args $ [] 'T
                  :return 'T
              :return 'Unit
          :examples $ []
          :schema $ :: 'Trait
        'ReactHooksHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ReactHooksHost
            .use-cell $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'app.core/ReactHooksHost 'T
              :return 'T
            .use-setter $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'app.core/ReactHooksHost 'T
              :return $ :: 'Fn $ {}
                :args $ [] 'T
                :return 'Unit
            .element $ :: 'Fn $ {}
              :generics $ [] 'C 'P
              :args $ [] 'app.core/ReactHooksHost 'C 'P 'JsObject
              :return 'JsObject
            .fragment $ :: 'Fn $ {}
              :generics $ []
              :args $ [] 'app.core/ReactHooksHost 'JsObject
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'js[] $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn js[] (& items)
            hint-fn $ {}
              :args $ []
              :rest 'Dynamic
              :return 'JsObject
              :features $ #{} :js-ffi
            js-array & items
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'js{} $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro js{} (& args)
            quasiquote $ js-object $ ~@ args
          :examples $ []
          :schema $ :: 'Macro $ {} (:rest 'Syntax)
            :capabilities $ #{}
            :expansion $ :: 'Expr 'JsObject
            :required $ []
        'use-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-atom (value)
            let
                host $ js-cast hooks 'app.core/ReactHooksHost
                cell $ .use-cell host $ ref value
                setter $ .use-setter host value
              %:: %Atom :atom cell setter
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'T
            :features $ #{} :js-ffi
            :generics $ [] 'T
            :return $ :: 'app.core/%Atom 'T
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.core
          :require $ |../hooks.mjs :default hooks
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (registerRootComponent comp-container) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|expo/build/launch/registerRootComponent :default registerRootComponent)
            app.comp.container :refer $ comp-container
