
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (props a2)
              <> SafeAreaView
                js{} $ :style (js{})
                <> comp-page $ js{}
                  :style $ js{}
        |comp-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-page (props e)
              let
                  *permission $ use-atom false
                  *show-scan $ use-atom true
                  *result $ use-atom nil
                React/useEffect
                  fn () $ let
                      get-permissions $ fn () (hint-fn async)
                        let
                            status $ js-await (.!requestPermissionsAsync BarCodeScanner)
                          .set! *permission $ = (.-status status) "\"granted"
                    get-permissions
                    , js/undefined
                  js[]
                <> View
                  js{} $ :style
                    js{} (:paddingTop 40) (:paddingLeft 20)
                  <> Text
                    js{} $ :style
                      js{} $ :fontFamily "\"monospace"
                    str (.deref *show-scan) "\" " $ js/JSON.stringify (.deref *result)
                  if (.deref *permission)
                    <><>
                      <> Text (js{}) "\"AA"
                      <> Pressable
                        js{}
                          :style $ js{} (:backgroundColor "\"#000") (:color "\"#fff") (:justifyContent "\"center") (:alignItems "\"center") (:width 80) (:height 40)
                          :onPress $ fn (e) (.swap! *show-scan not)
                        <> Text
                          js{} $ :style
                            js{} $ :color "\"#fff"
                          , "\"Toggle"
                      if (.deref *show-scan)
                        <> BarCodeScanner $ js{}
                          :onBarCodeScanned $ fn (info) (js/console.log "\"Scaned" info) (.set! *show-scan false)
                            .set! *result $ .-data info
                          :style $ js{} (:width 360) (:height 480) (:backgroundColor "\"#a3f")
                        <> Text (js{}) "\"hidden"
                      <> Text (js{}) (str "\"....")
                    <> Text (js{})
                      str-spaced "\"Failed" $ .deref *permission
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require ("\"react" :as React)
            "\"react-native" :refer $ View Text StyleSheet ScrollView SafeAreaView Pressable
            "\"expo-barcode-scanner" :refer $ BarCodeScanner
            app.core :refer $ <> <><> use-atom js{} js[]
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
