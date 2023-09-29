
{} (:package |app)
  :configs $ {} (:expose-port 6011) (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695576201071) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1695576201071) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1695576201071) (:by |u0) (:text |comp-container)
              |h $ %{} :Expr (:at 1695576201071) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695576465237) (:by |u0) (:text |props)
                  |b $ %{} :Leaf (:at 1695576468267) (:by |u0) (:text |a2)
              |l $ %{} :Expr (:at 1695576205380) (:by |u0)
                :data $ {}
                  |X $ %{} :Leaf (:at 1696003761526) (:by |u0) (:text |<>)
                  |b $ %{} :Leaf (:at 1695576285693) (:by |u0) (:text |SafeAreaView)
                  |h $ %{} :Expr (:at 1695576916484) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696005205085) (:by |u0) (:text |js{})
                      |b $ %{} :Expr (:at 1695576916484) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695576916484) (:by |u0) (:text |:style)
                          |b $ %{} :Expr (:at 1695576916484) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696005206727) (:by |u0) (:text |js{})
                              |l $ %{} :Expr (:at 1695576924921) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695576926262) (:by |u0) (:text |:height)
                                  |b $ %{} :Leaf (:at 1695576928513) (:by |u0) (:text "|\"100%")
                  |l $ %{} :Expr (:at 1695576292545) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696003816040) (:by |u0) (:text |<><>)
                      |l $ %{} :Expr (:at 1695576316706) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696003782405) (:by |u0) (:text |<>)
                          |b $ %{} :Leaf (:at 1695576320415) (:by |u0) (:text |Text)
                          |h $ %{} :Expr (:at 1695576323458) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696005201621) (:by |u0) (:text |js{})
                              |b $ %{} :Expr (:at 1695576506328) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695576507125) (:by |u0) (:text |:style)
                                  |b $ %{} :Expr (:at 1695576508045) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696005208435) (:by |u0) (:text |js{})
                                      |b $ %{} :Expr (:at 1695576514526) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695576515865) (:by |u0) (:text |:color)
                                          |b $ %{} :Leaf (:at 1695576567618) (:by |u0) (:text "|\"red")
                                      |h $ %{} :Expr (:at 1695576530442) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695576560987) (:by |u0) (:text |:fontWeight)
                                          |b $ %{} :Leaf (:at 1695576534535) (:by |u0) (:text "|\"bold")
                                      |l $ %{} :Expr (:at 1695576539480) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695576562644) (:by |u0) (:text |:fontSize)
                                          |b $ %{} :Leaf (:at 1695576544703) (:by |u0) (:text |40)
                          |l $ %{} :Leaf (:at 1695981204405) (:by |u0) (:text "|\"Calcit DEMO")
                      |o $ %{} :Expr (:at 1695981546117) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696003785323) (:by |u0) (:text |<>)
                          |b $ %{} :Leaf (:at 1696005949656) (:by |u0) (:text |comp-page)
                          |h $ %{} :Expr (:at 1695981970893) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696005199214) (:by |u0) (:text |js{})
        |comp-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695981551891) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1695981554221) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696005942618) (:by |u0) (:text |comp-page)
              |h $ %{} :Expr (:at 1695981551891) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695981978096) (:by |u0) (:text |props)
                  |b $ %{} :Leaf (:at 1695982290882) (:by |u0) (:text |e)
              |l $ %{} :Expr (:at 1695981556023) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695981559504) (:by |u0) (:text |let)
                  |b $ %{} :Expr (:at 1695981560745) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695981561249) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695981572885) (:by |u0) (:text |*permission)
                          |b $ %{} :Expr (:at 1695981576642) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696004675675) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1695981580614) (:by |u0) (:text |false)
                      |b $ %{} :Expr (:at 1695998750520) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695998754118) (:by |u0) (:text |*scan)
                          |b $ %{} :Expr (:at 1695998757003) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696004976278) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1695998763803) (:by |u0) (:text |false)
                  |h $ %{} :Expr (:at 1695981687652) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695981694691) (:by |u0) (:text |React/useEffect)
                      |b $ %{} :Expr (:at 1695981695135) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695981695409) (:by |u0) (:text |fn)
                          |b $ %{} :Expr (:at 1695981696497) (:by |u0)
                            :data $ {}
                          |h $ %{} :Expr (:at 1695981701662) (:by |u0)
                            :data $ {}
                              |M $ %{} :Leaf (:at 1695998794983) (:by |u0) (:text |let)
                              |Y $ %{} :Expr (:at 1695998796484) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1695998796628) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695998800311) (:by |u0) (:text |get-permissions)
                                      |b $ %{} :Expr (:at 1695998801255) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695998801498) (:by |u0) (:text |fn)
                                          |X $ %{} :Expr (:at 1695998806405) (:by |u0)
                                            :data $ {}
                                          |b $ %{} :Expr (:at 1695998801850) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695998802725) (:by |u0) (:text |hint-fn)
                                              |b $ %{} :Leaf (:at 1695998805359) (:by |u0) (:text |async)
                                          |h $ %{} :Expr (:at 1695998809918) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695998810435) (:by |u0) (:text |let)
                                              |b $ %{} :Expr (:at 1695998814305) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1695998814461) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695998815652) (:by |u0) (:text |status)
                                                      |b $ %{} :Expr (:at 1695998816163) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1695998817486) (:by |u0) (:text |js-await)
                                                          |b $ %{} :Expr (:at 1695998818120) (:by |u0)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1695998826356) (:by |u0) (:text |.!requestPermissionsAsync)
                                                              |T $ %{} :Leaf (:at 1695998821003) (:by |u0) (:text |BarCodeScanner)
                                              |h $ %{} :Expr (:at 1695998827899) (:by |u0)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1696004696298) (:by |u0) (:text |.set!)
                                                  |T $ %{} :Leaf (:at 1696004694016) (:by |u0) (:text |*permission)
                                                  |b $ %{} :Expr (:at 1695998832596) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695998833478) (:by |u0) (:text |=)
                                                      |b $ %{} :Expr (:at 1695998834752) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1695998838779) (:by |u0) (:text |.-status)
                                                          |b $ %{} :Leaf (:at 1695998840686) (:by |u0) (:text |status)
                                                      |h $ %{} :Leaf (:at 1695998843839) (:by |u0) (:text "|\"granted")
                              |e $ %{} :Expr (:at 1695998851773) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695998851644) (:by |u0) (:text |get-permissions)
                              |l $ %{} :Leaf (:at 1695983991110) (:by |u0) (:text |js/undefined)
                      |h $ %{} :Expr (:at 1695981716975) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696005177281) (:by |u0) (:text |js[])
                  |l $ %{} :Expr (:at 1695981908927) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695981918939) (:by |u0) (:text |if)
                      |a $ %{} :Expr (:at 1695998915964) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004681569) (:by |u0) (:text |.deref)
                          |b $ %{} :Leaf (:at 1695998918978) (:by |u0) (:text |*permission)
                      |h $ %{} :Expr (:at 1695982140256) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696003865612) (:by |u0) (:text |<><>)
                          |l $ %{} :Expr (:at 1695998930202) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696003868086) (:by |u0) (:text |<>)
                              |b $ %{} :Leaf (:at 1695998935574) (:by |u0) (:text |BarCodeScanner)
                              |h $ %{} :Expr (:at 1695998938189) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696005216554) (:by |u0) (:text |js{})
                                  |b $ %{} :Expr (:at 1695998944072) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695998945102) (:by |u0) (:text |:onBarCodeScanned)
                                      |b $ %{} :Expr (:at 1695998952272) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695998952525) (:by |u0) (:text |if)
                                          |b $ %{} :Expr (:at 1695998955769) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696004986627) (:by |u0) (:text |.deref)
                                              |b $ %{} :Leaf (:at 1695998958231) (:by |u0) (:text |*scan)
                                          |h $ %{} :Leaf (:at 1695998967005) (:by |u0) (:text |nil)
                                          |l $ %{} :Expr (:at 1696005015814) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |fn)
                                              |b $ %{} :Expr (:at 1696005015814) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |info)
                                              |h $ %{} :Expr (:at 1696005015814) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |.set!)
                                                  |b $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |*scan)
                                                  |h $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |true)
                                              |l $ %{} :Expr (:at 1696005015814) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |js/console.log)
                                                  |b $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text "|\"Scaned")
                                                  |h $ %{} :Leaf (:at 1696005015814) (:by |u0) (:text |info)
                                  |h $ %{} :Expr (:at 1695998973963) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695998975132) (:by |u0) (:text |:style)
                                      |b $ %{} :Expr (:at 1695998980471) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695998981251) (:by |u0) (:text |.-absoluteFillObject)
                                          |b $ %{} :Leaf (:at 1695998985010) (:by |u0) (:text |StyleSheet)
                          |q $ %{} :Expr (:at 1695984654396) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696003869970) (:by |u0) (:text |<>)
                              |b $ %{} :Leaf (:at 1695984656090) (:by |u0) (:text |Text)
                              |h $ %{} :Expr (:at 1695984657962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696005187771) (:by |u0) (:text |js{})
                              |l $ %{} :Expr (:at 1695984720799) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1695984721460) (:by |u0) (:text |str)
                                  |T $ %{} :Leaf (:at 1695984661943) (:by |u0) (:text "|\"....")
                      |l $ %{} :Expr (:at 1695984016778) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696003871736) (:by |u0) (:text |<>)
                          |b $ %{} :Leaf (:at 1695984020053) (:by |u0) (:text |Text)
                          |h $ %{} :Expr (:at 1695984020614) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696005189375) (:by |u0) (:text |js{})
                          |l $ %{} :Expr (:at 1695984042538) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695984047464) (:by |u0) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1695998989732) (:by |u0) (:text "|\"Failed")
                              |l $ %{} :Expr (:at 1695984433139) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696004684245) (:by |u0) (:text |.deref)
                                  |b $ %{} :Leaf (:at 1695984433139) (:by |u0) (:text |*permission)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1695576151593) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1695576151593) (:by |u0) (:text |ns)
            |b $ %{} :Leaf (:at 1695576151593) (:by |u0) (:text |app.comp.container)
            |h $ %{} :Expr (:at 1695576212220) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1695576215486) (:by |u0) (:text |:require)
                |b $ %{} :Expr (:at 1695576216138) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695576218552) (:by |u0) (:text "|\"react")
                    |b $ %{} :Leaf (:at 1695576268141) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1695576221296) (:by |u0) (:text |React)
                |h $ %{} :Expr (:at 1695576227259) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695576236387) (:by |u0) (:text "|\"react-native")
                    |b $ %{} :Leaf (:at 1695576238217) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1695576239125) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695576239795) (:by |u0) (:text |View)
                        |b $ %{} :Leaf (:at 1695576242289) (:by |u0) (:text |Text)
                        |h $ %{} :Leaf (:at 1695576247606) (:by |u0) (:text |StyleSheet)
                        |l $ %{} :Leaf (:at 1695576260086) (:by |u0) (:text |ScrollView)
                        |o $ %{} :Leaf (:at 1695576283611) (:by |u0) (:text |SafeAreaView)
                |l $ %{} :Expr (:at 1695998709977) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695998718649) (:by |u0) (:text "|\"expo-barcode-scanner")
                    |b $ %{} :Leaf (:at 1695998713474) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1695998714591) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695998714064) (:by |u0) (:text |BarCodeScanner)
                |o $ %{} :Expr (:at 1696004039167) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696004042107) (:by |u0) (:text |app.core)
                    |b $ %{} :Leaf (:at 1696004042865) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1696004043069) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696004043754) (:by |u0) (:text |<>)
                        |b $ %{} :Leaf (:at 1696004044512) (:by |u0) (:text |<><>)
                        |h $ %{} :Leaf (:at 1696004671971) (:by |u0) (:text |use-atom)
                        |l $ %{} :Leaf (:at 1696005093156) (:by |u0) (:text |js{})
                        |o $ %{} :Leaf (:at 1696005094554) (:by |u0) (:text |js[])
    |app.core $ %{} :FileEntry
      :defs $ {}
        |%Atom $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696004249103) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696004472405) (:by |u0) (:text |defrecord!)
              |b $ %{} :Leaf (:at 1696004486009) (:by |u0) (:text |%Atom)
              |h $ %{} :Expr (:at 1696004487383) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696004494463) (:by |u0) (:text |:deref)
                  |b $ %{} :Expr (:at 1696004494835) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696004495237) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696004496665) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004496493) (:by |u0) (:text |self)
                      |h $ %{} :Expr (:at 1696004497423) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004498487) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696004499420) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696004500043) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696004500612) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696004501676) (:by |u0) (:text |:atom)
                                  |b $ %{} :Leaf (:at 1696004510498) (:by |u0) (:text |*s)
                                  |h $ %{} :Leaf (:at 1696004512894) (:by |u0) (:text |*r)
                              |b $ %{} :Expr (:at 1696004514923) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696004518539) (:by |u0) (:text |.-current)
                                  |b $ %{} :Leaf (:at 1696004520072) (:by |u0) (:text |*r)
              |l $ %{} :Expr (:at 1696004525548) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696004527262) (:by |u0) (:text |:set!)
                  |b $ %{} :Expr (:at 1696004527679) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696004527948) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696004528613) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004529429) (:by |u0) (:text |self)
                          |b $ %{} :Leaf (:at 1696004530059) (:by |u0) (:text |v)
                      |h $ %{} :Expr (:at 1696004531140) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004533201) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696004535178) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696004537187) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696004537187) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |:atom)
                                  |b $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*s)
                                  |h $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*r)
                              |b $ %{} :Expr (:at 1696004741190) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1696004742285) (:by |u0) (:text |do)
                                  |T $ %{} :Expr (:at 1696004538942) (:by |u0)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1696004541345) (:by |u0) (:text |set!)
                                      |T $ %{} :Expr (:at 1696004537187) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |.-current)
                                          |b $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*r)
                                      |b $ %{} :Leaf (:at 1696004542852) (:by |u0) (:text |v)
                                  |b $ %{} :Expr (:at 1696004744479) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1696004744479) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004744479) (:by |u0) (:text |.-1)
                                          |b $ %{} :Leaf (:at 1696004744479) (:by |u0) (:text |*s)
                                      |b $ %{} :Leaf (:at 1696004744479) (:by |u0) (:text |v)
              |o $ %{} :Expr (:at 1696004525548) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696004563270) (:by |u0) (:text |:swap!)
                  |b $ %{} :Expr (:at 1696004527679) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696004527948) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696004528613) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004529429) (:by |u0) (:text |self)
                          |b $ %{} :Leaf (:at 1696004565450) (:by |u0) (:text |f)
                      |h $ %{} :Expr (:at 1696004531140) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004533201) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696004535178) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696004537187) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696004537187) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |:atom)
                                  |b $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*s)
                                  |h $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*r)
                              |b $ %{} :Expr (:at 1696004573659) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1696004574383) (:by |u0) (:text |let)
                                  |L $ %{} :Expr (:at 1696004575942) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1696004576102) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004576585) (:by |u0) (:text |v)
                                          |b $ %{} :Expr (:at 1696004579172) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696004579172) (:by |u0) (:text |.-current)
                                              |b $ %{} :Leaf (:at 1696004579172) (:by |u0) (:text |*r)
                                      |b $ %{} :Expr (:at 1696004581487) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004582371) (:by |u0) (:text |v')
                                          |b $ %{} :Expr (:at 1696004583530) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696004583699) (:by |u0) (:text |f)
                                              |b $ %{} :Leaf (:at 1696004584213) (:by |u0) (:text |v)
                                  |T $ %{} :Expr (:at 1696004538942) (:by |u0)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1696004541345) (:by |u0) (:text |set!)
                                      |T $ %{} :Expr (:at 1696004537187) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |.-current)
                                          |b $ %{} :Leaf (:at 1696004537187) (:by |u0) (:text |*r)
                                      |b $ %{} :Leaf (:at 1696004750574) (:by |u0) (:text |v')
                                  |b $ %{} :Expr (:at 1696004725550) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1696004725550) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696004725550) (:by |u0) (:text |.-1)
                                          |b $ %{} :Leaf (:at 1696004725550) (:by |u0) (:text |*s)
                                      |b $ %{} :Leaf (:at 1696004725550) (:by |u0) (:text |v')
        |<> $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696003762394) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696003769680) (:by |u0) (:text |def)
              |b $ %{} :Leaf (:at 1696003992579) (:by |u0) (:text |<>)
              |h $ %{} :Leaf (:at 1696003775833) (:by |u0) (:text |React/createElement)
        |<><> $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696003820220) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696003823132) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696004030771) (:by |u0) (:text |<><>)
              |h $ %{} :Expr (:at 1696003820220) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696003825317) (:by |u0) (:text |&)
                  |T $ %{} :Leaf (:at 1696003824538) (:by |u0) (:text |args)
              |l $ %{} :Expr (:at 1696003826578) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696003827022) (:by |u0) (:text |<>)
                  |b $ %{} :Leaf (:at 1696003827738) (:by |u0) (:text |React/Fragment)
                  |h $ %{} :Leaf (:at 1696003830076) (:by |u0) (:text |nil)
                  |l $ %{} :Leaf (:at 1696003830597) (:by |u0) (:text |&)
                  |o $ %{} :Leaf (:at 1696003831358) (:by |u0) (:text |args)
        |js[] $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696005064809) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696005077991) (:by |u0) (:text |def)
              |b $ %{} :Leaf (:at 1696005064809) (:by |u0) (:text |js[])
              |h $ %{} :Leaf (:at 1696005082812) (:by |u0) (:text |js-array)
        |js{} $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696005062657) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696005133406) (:by |u0) (:text |defmacro)
              |b $ %{} :Leaf (:at 1696005062657) (:by |u0) (:text |js{})
              |e $ %{} :Expr (:at 1696005137216) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696005138666) (:by |u0) (:text |&)
                  |b $ %{} :Leaf (:at 1696005139376) (:by |u0) (:text |args)
              |h $ %{} :Expr (:at 1696005147568) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696005150251) (:by |u0) (:text |quasiquote)
                  |T $ %{} :Expr (:at 1696005140176) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696005073628) (:by |u0) (:text |js-object)
                      |b $ %{} :Expr (:at 1696005162377) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696005161848) (:by |u0) (:text |~@)
                          |b $ %{} :Leaf (:at 1696005165189) (:by |u0) (:text |args)
        |use-atom $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696004068345) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696004068345) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696004097284) (:by |u0) (:text |use-atom)
              |h $ %{} :Expr (:at 1696004068345) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696004159612) (:by |u0) (:text |v)
              |l $ %{} :Expr (:at 1696004135407) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696004146933) (:by |u0) (:text |let)
                  |b $ %{} :Expr (:at 1696004147214) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696004147360) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004149650) (:by |u0) (:text |*s)
                          |b $ %{} :Expr (:at 1696004150671) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696004156834) (:by |u0) (:text |React/useState)
                              |b $ %{} :Leaf (:at 1696004161492) (:by |u0) (:text |v)
                      |b $ %{} :Expr (:at 1696004164667) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696004166830) (:by |u0) (:text |*r)
                          |b $ %{} :Expr (:at 1696004167953) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696004174870) (:by |u0) (:text |React/useRef)
                              |b $ %{} :Leaf (:at 1696004175579) (:by |u0) (:text |v)
                  |h $ %{} :Expr (:at 1696004181265) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696004184399) (:by |u0) (:text |%::)
                      |b $ %{} :Leaf (:at 1696004598416) (:by |u0) (:text |%Atom)
                      |e $ %{} :Leaf (:at 1696004922197) (:by |u0) (:text |:atom)
                      |h $ %{} :Leaf (:at 1696004602598) (:by |u0) (:text |*s)
                      |l $ %{} :Leaf (:at 1696004604072) (:by |u0) (:text |*r)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1696003983366) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1696003983366) (:by |u0) (:text |ns)
            |b $ %{} :Leaf (:at 1696003983366) (:by |u0) (:text |app.core)
            |h $ %{} :Expr (:at 1696004005127) (:by |u0)
              :data $ {}
                |D $ %{} :Leaf (:at 1696004006118) (:by |u0) (:text |:require)
                |T $ %{} :Expr (:at 1696004004843) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696004004843) (:by |u0) (:text "|\"react")
                    |b $ %{} :Leaf (:at 1696004004843) (:by |u0) (:text |:as)
                    |h $ %{} :Leaf (:at 1696004004843) (:by |u0) (:text |React)
                |b $ %{} :Expr (:at 1696004016756) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text "|\"react-native")
                    |b $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1696004016756) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |View)
                        |b $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |Text)
                        |h $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |StyleSheet)
                        |l $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |ScrollView)
                        |o $ %{} :Leaf (:at 1696004016756) (:by |u0) (:text |SafeAreaView)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695576375081) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1695576375081) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1695576375081) (:by |u0) (:text |main!)
              |h $ %{} :Expr (:at 1695576375081) (:by |u0)
                :data $ {}
              |l $ %{} :Expr (:at 1695576399629) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695576400002) (:by |u0) (:text |do)
                  |b $ %{} :Leaf (:at 1695576400371) (:by |u0) (:text |comp-container)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695576377243) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1695576377243) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1695576377243) (:by |u0) (:text |reload!)
              |h $ %{} :Expr (:at 1695576377243) (:by |u0)
                :data $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1695576370688) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1695576370688) (:by |u0) (:text |ns)
            |b $ %{} :Leaf (:at 1695576370688) (:by |u0) (:text |app.main)
            |h $ %{} :Expr (:at 1695576384930) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1695576388211) (:by |u0) (:text |:require)
                |b $ %{} :Expr (:at 1695576388543) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695576393262) (:by |u0) (:text |app.comp.container)
                    |b $ %{} :Leaf (:at 1695576394830) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1695576395143) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695576396745) (:by |u0) (:text |comp-container)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
