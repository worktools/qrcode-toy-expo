
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |%draft-plugin-actions $ %{} :CodeEntry (:doc |)
          :code $ quote
            defrecord! %draft-plugin-actions
              :render $ fn (self)
                tag-match self $ 
                  :draft-plugin node *draft *show?
                  , node
              :show $ fn (self)
                tag-match self $ 
                  :draft-plugin node *draft *show?
                  .set! *show? true
              :hide $ fn (self)
                tag-match self $ 
                  :draft-plugin node *draft *show?
                  .set! *show? false
              :get $ fn (self)
                tag-match self $ 
                  :draft-plugin node *draft *show?
                  .deref *draft
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (props e)
              let
                  *permission $ use-atom false
                  *show-scan $ use-atom false
                  *result $ use-atom nil
                  draft-plugin $ use-draft-plugin
                    fn (content) (.set! *result content)
                React/useEffect
                  fn () $ let
                      get-permissions $ fn () (hint-fn async)
                        let
                            status $ js-await (.!requestPermissionsAsync BarCodeScanner)
                          .set! *permission $ = (.-status status) "\"granted"
                    get-permissions
                    , js/undefined
                  js[]
                <><>
                  comp-scan *show-scan $ fn (content)
                    let
                        c $ .trim content
                      .set! *result c
                  if (not @*show-scan)
                    <> View
                      js{} $ :style
                        js{} (:paddingTop 40) (:paddingLeft 20) (:backgroundColor "\"#eee") (:height "\"100%")
                      <> View (js{})
                        <> Text
                          js{} $ :style
                            js{} (:fontFamily "\"monospace") (:marginBottom 12)
                          str "\"Scan result: " $ js/JSON.stringify @*result
                      <> View
                        js{} $ :style
                          js{} (:flexDirection "\"row") (:gap 8)
                        if @*permission
                          <> Button $ js{} (:title "\"Scan")
                            :onPress $ fn (e) (.swap! *show-scan not)
                          <> Text (js{}) (str-spaced "\"No permission" @*permission)
                        <> Button $ js{} (:title "\"Draft")
                          :onPress $ fn (e) (.show draft-plugin)
                      if-let (content @*result)
                        if
                          not $ blank? content
                          <> View
                            js{} $ :style
                              js{} $ :marginTop 16
                            <> QRCode $ js{} (:value content) (:size 320)
                      .render draft-plugin
        |comp-scan $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-scan (*show-scan on-scan)
              <> Modal
                js{} (:animationType "\"fade") (:transparent true) (:visible @*show-scan)
                  :onRequestClose $ fn () (.set! *show-scan false)
                <> BarCodeScanner $ js{}
                  :onBarCodeScanned $ fn (info) (js/console.log "\"Scaned" info) (.set! *show-scan false)
                    on-scan $ .-data info
                  :style $ js{} (:width "\"100%") (:height "\"100%") (:backgroundColor "\"hsla(0,0%,0%,0.7)")
                <> Pressable
                  js{}
                    :style $ style-merge style-press-button style-close-position
                    :onPress $ fn (e) (.set! *show-scan false)
                  <> Text
                    js{} $ :style
                      js{} $ :color "\"#fff"
                    , "\"Close"
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
        |use-draft-plugin $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn use-draft-plugin (on-submit)
              let
                  *draft $ use-atom "\""
                  *show? $ use-atom false
                  node $ <> Modal
                    js{}
                      :visible $ .deref *show?
                      :onRequestClose $ fn () (.set! *show? false)
                      :animationType "\"fade"
                      :transparent true
                    <> View
                      js{} $ :style
                        js{} (:justifyContent "\"center") (:alignItems "\"center") (:flex 1) (:backgroundColor "\"hsla(0,0%,0%,0.6)")
                      <> View
                        js{} $ :style
                          js{} (:marginTop 8) (:flexDirection "\"column") (:gap 8) (:backgroundColor "\"#fff") (:borderWidth 1) (:padding 8) (:borderRadius 8)
                        <> TextInput $ js{}
                          :value $ .deref *draft
                          :style $ js{} (:borderWidth 1) (:width 260) (:paddingHorizontal 8)
                          :placeholder "\"raw text"
                          :onChangeText $ fn (t) (; js/console.log "\"Change" t) (.set! *draft t)
                        <> View
                          js{} $ :style
                            js{} $ :style
                              js{} (:flexDirection :row) (:justifyContent "\"space-between") (:gap 8)
                          <> View $ js{}
                          <> View
                            js{} $ :style (js{})
                            <> Button $ js{} (:title "\"Submit")
                              :onPress $ fn (e)
                                on-submit $ .deref *draft
                                .set! *show? false
                %:: %draft-plugin-actions :draft-plugin node *draft *show?
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require ("\"react" :as React)
            "\"react-native" :refer $ View Modal Button Text StyleSheet ScrollView SafeAreaView Pressable TextInput
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
