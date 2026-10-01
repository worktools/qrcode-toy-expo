
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
                :return 'Dynamic
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
              :return 'Dynamic
          :examples $ []
          :schema $ :: 'Trait
        'DraftPluginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum DraftPluginState (:draft-plugin 'JsObject 'app.core/%Atom 'app.core/%Atom)
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
                *result $ use-atom nil
                draft-plugin $ use-draft-plugin $ fn (content) (.set! *result content)
              React/useEffect
                fn () $ let
                    get-permissions $ fn ()
                      hint-fn $ {}
                        :args $ []
                        :return 'Unit
                        :async true
                        :features $ #{} :js-ffi
                      let
                          status $ unsafe-coerce
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
                    .set! *result c
                if
                  not $ .deref *show-scan
                  <> View
                    js{} $ :style $ js{} (:paddingTop 40) (:paddingLeft 20) (:backgroundColor |#eee) (:height |100%)
                    <> View (js{})
                      <> Text
                        js{} $ :style $ js{} (:fontFamily |monospace) (:marginBottom 12)
                        str "|Scan result: " $ js/JSON.stringify $ .deref *result
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
                              result $ unsafe-coerce
                                js-await $ launchImageLibraryAsync $ js{} (:allowEditing true) (:quality 1)
                                , 'app.comp.container/ImagePickerResult
                            if (.-canceled result)
                              let
                                  toast $ unsafe-coerce ToastAndroid 'app.comp.container/ToastHost
                                .!show toast "|cancelled by user" $ .-SHORT toast
                              let
                                  assets $ .-assets result
                                if (js-present? assets)
                                  let
                                      asset $ unsafe-coerce (.-0 assets) 'app.comp.container/ImageAsset
                                      results $ unsafe-coerce
                                        js-await $ .!scanFromURLAsync BarCodeScanner $ .-uri asset
                                        , 'app.comp.container/BarcodeResults
                                    if
                                      > (.-length results) 0
                                      .set! *result $ read-barcode-data $ .-first results
                            , &unit
                      <> Button $ js{} (:title |Text)
                        :onPress $ fn (e) (.show draft-plugin)
                    let
                        content $ .deref *result
                      if (string? content)
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
            :args $ [] 'app.core/%Atom $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'String
            :features $ #{} :js-ffi
        'read-barcode-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-barcode-data (info)
            hint-fn $ {}
              :args $ [] 'Dynamic
              :return 'String
              :features $ #{} :js-ffi
            let
                event $ unsafe-coerce info 'app.comp.container/BarcodeEvent
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
                        :onChangeText $ fn (t) (; js/console.log |Change t) (.set! *draft t)
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
              assert-type (%:: %draft-plugin-actions :draft-plugin node *draft *show?) 'app.comp.container/%draft-plugin-actions
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.container/%draft-plugin-actions)
            :args $ [] $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (|react :as React)
            |react-native :refer $ View Modal Button ToastAndroid Text StyleSheet ScrollView SafeAreaView Pressable TextInput
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
                create-element $ unsafe-coerce React/createElement $ :: 'Fn
                  {}
                    :args $ [] 'Dynamic 'Dynamic
                    :rest 'Dynamic
                    :return 'JsObject
              create-element component props & children
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        '<><> $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn <><> (& args) (<> React/Fragment nil & args)
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'AtomState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum AtomState (:atom 'JsArray 'app.core/HookRef)
          :examples $ []
          :schema $ :: 'EnumDef
        'HookAtomImpl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defimpl HookAtomImpl HookAtomOps
            .deref $ fn (self)
              hint-fn $ {}
                :args $ [] 'app.core/AtomState
                :return 'Dynamic
              match self $
                :atom state reference
                read-ref reference
            .set! $ fn (self value)
              hint-fn $ {}
                :args $ [] 'app.core/AtomState 'Dynamic
                :return 'Unit
              match self $
                :atom state reference
                do (write-ref! reference value) (call-setter! state value)
            .swap! $ fn (self transform)
              hint-fn $ {}
                :args $ [] 'app.core/AtomState $ :: 'Fn
                  {}
                    :args $ [] 'Dynamic
                    :return 'Dynamic
                :return 'Unit
              match self $
                :atom state reference
                let
                    value $ transform $ read-ref reference
                  write-ref! reference value
                  call-setter! state value
          :examples $ []
          :schema $ :: 'Impl
        'HookAtomOps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HookAtomOps
            .deref $ :: 'Fn $ {}
              :args $ [] 'app.core/AtomState
              :return 'Dynamic
            .set! $ :: 'Fn $ {}
              :args $ [] 'app.core/AtomState 'Dynamic
              :return 'Unit
            .swap! $ :: 'Fn $ {}
              :args $ [] 'app.core/AtomState $ :: 'Fn
                {}
                  :args $ [] 'Dynamic
                  :return 'Dynamic
              :return 'Unit
          :examples $ []
          :schema $ :: 'Trait
        'HookRef $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait HookRef (:current 'Dynamic)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :writable $ #{} :current
          :schema $ :: 'Trait
        'call-setter! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn call-setter! (state value)
            hint-fn $ {}
              :args $ [] 'JsArray 'Dynamic
              :return 'Unit
              :features $ #{} :js-ffi
            let
                setter $ unsafe-coerce (.-1 state)
                  :: 'Fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
              setter value
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'JsArray 'Dynamic
            :features $ #{} :js-ffi
        'js[] $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn js[] (& items)
            hint-fn $ {}
              :args $ []
              :rest 'Dynamic
              :return 'JsArray
              :features $ #{} :js-ffi
            js-array & items
          :examples $ []
          :schema $ :: 'Fn $ {} (:rest 'Dynamic) (:return 'JsArray)
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
        'read-ref $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-ref (reference)
            hint-fn $ {}
              :args $ [] 'app.core/HookRef
              :return 'Dynamic
              :features $ #{} :js-ffi
            .-current reference
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'app.core/HookRef
            :features $ #{} :js-ffi
        'use-atom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn use-atom (value)
            hint-fn $ {}
              :args $ [] 'Dynamic
              :return 'app.core/AtomState
              :features $ #{} :js-ffi
            let
                use-state $ unsafe-coerce React/useState $ :: 'Fn
                  {}
                    :args $ [] 'Dynamic
                    :return 'JsArray
                use-ref $ unsafe-coerce React/useRef $ :: 'Fn
                  {}
                    :args $ [] 'Dynamic
                    :return 'app.core/HookRef
                state $ use-state value
                reference $ use-ref value
              assert-type (%:: %Atom :atom state reference) 'app.core/%Atom
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.core/%Atom)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'write-ref! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn write-ref! (reference value)
            hint-fn $ {}
              :args $ [] 'app.core/HookRef 'Dynamic
              :return 'Unit
              :features $ #{} :js-ffi
            set! (.-current reference) value
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'app.core/HookRef 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.core
          :require (|react :as React)
            |react-native :refer $ View Text StyleSheet ScrollView SafeAreaView
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (registerRootComponent comp-container)
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
