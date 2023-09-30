
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (props e)
              let
                  *permission $ use-atom false
                  *show-scan $ use-atom false
                  *result $ use-atom nil
                  *draft $ use-atom "\""
                React/useEffect
                  fn () $ let
                      get-permissions $ fn () (hint-fn async)
                        let
                            status $ js-await (.!requestPermissionsAsync BarCodeScanner)
                          .set! *permission $ = (.-status status) "\"granted"
                    get-permissions
                    , js/undefined
                  js[]
                if (.deref *show-scan)
                  <> View
                    js{} $ :style
                      js{} (:bottom 0) (:left 0) (:right 0) (:top 0) (:position "\"absolute") (:backgroundColor "\"#eee")
                    <> BarCodeScanner $ js{}
                      :onBarCodeScanned $ fn (info) (js/console.log "\"Scaned" info) (.set! *show-scan false)
                        .set! *result $ .-data info
                        .set! *draft "\""
                      :style $ js{} (; :width 360) (:width "\"100%") (:height "\"100%") (; :height 480) (:backgroundColor "\"#000")
                    <> Pressable
                      js{}
                        :style $ style-merge style-press-button style-close-position
                        :onPress $ fn (e) (.set! *show-scan false)
                      <> Text
                        js{} $ :style
                          js{} $ :color "\"#fff"
                        , "\"Close"
                  <> View
                    js{} $ :style
                      js{} (:paddingTop 40) (:paddingLeft 20) (:backgroundColor "\"#eee") (:height "\"100%")
                    <> View (js{})
                      <> Text
                        js{} $ :style
                          js{} (:fontFamily "\"monospace") (:marginBottom 12)
                        str "\"Scan result: " $ js/JSON.stringify (.deref *result)
                    <> View
                      js{} $ :style
                        js{} (:flexDirection "\"row") (:gap 8)
                      if (.deref *permission)
                        <> Pressable
                          js{} (:style style-press-button)
                            :onPress $ fn (e) (.swap! *show-scan not)
                          <> Text
                            js{} $ :style
                              js{} $ :color "\"#fff"
                            , "\"Scan"
                        <> Text (js{})
                          str-spaced "\"No permission" $ .deref *permission
                    if-let
                      content $ .deref *result
                      <> View
                        js{} $ :style
                          js{} $ :marginTop 16
                        <> QRCode $ js{} (:value content)
                    <> View
                      js{} $ :style
                        js{} (:marginTop 8) (:flexDirection "\"row") (:gap 8)
                      <> TextInput $ js{}
                        :value $ .deref *draft
                        :style $ js{} (:borderWidth 1) (:width 260) (:paddingHorizontal 8)
                        :onChangeText $ fn (t) (; js/console.log "\"Change" t) (.set! *draft t)
                      <> Pressable
                        js{} (:style style-press-button)
                          :onPress $ fn (e)
                            .set! *result $ .deref *draft
                        <> Text
                          js{} $ :style
                            js{} $ :color "\"#fff"
                          , "\"Set"
        |style-close-position $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-close-position $ js{} (:position "\"absolute") (:top 40) (:right 20)
        |style-merge $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn style-merge (& args)
              js/Object.assign (js{}) & args
        |style-press-button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-press-button $ js{} (:backgroundColor "\"#555") (:color "\"#fff") (:justifyContent "\"center") (:alignItems "\"center") (:width 80) (:height 40)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require ("\"react" :as React)
            "\"react-native" :refer $ View Text StyleSheet ScrollView SafeAreaView Pressable TextInput
            "\"expo-barcode-scanner" :refer $ BarCodeScanner
            app.core :refer $ <> <><> use-atom js{} js[]
            "\"react-native-qrcode-svg" :default QRCode
    |app.core $ %{} :FileEntry
      :defs $ {}
        |%Atom $ %{} :CodeEntry (:doc |)
          :code $ quote
            defrecord! %Atom
              :deref $ fn (self)
                tag-match self $ 
                  :atom *s *r
                  .-current *r
              :set! $ fn (self v)
                tag-match self $ 
                  :atom *s *r
                  do
                    set! (.-current *r) v
                    (.-1 *s) v
              :swap! $ fn (self f)
                tag-match self $ 
                  :atom *s *r
                  let
                      v $ .-current *r
                      v' $ f v
                    set! (.-current *r) v'
                    (.-1 *s) v'
        |<> $ %{} :CodeEntry (:doc |)
          :code $ quote (def <> React/createElement)
        |<><> $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn <><> (& args) (<> React/Fragment nil & args)
        |js[] $ %{} :CodeEntry (:doc |)
          :code $ quote (def js[] js-array)
        |js{} $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro js{} (& args)
              quasiquote $ js-object (~@ args)
        |use-atom $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn use-atom (v)
              let
                  *s $ React/useState v
                  *r $ React/useRef v
                %:: %Atom :atom *s *r
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.core $ :require ("\"react" :as React)
            "\"react-native" :refer $ View Text StyleSheet ScrollView SafeAreaView
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ do comp-container
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! $
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            app.comp.container :refer $ comp-container
