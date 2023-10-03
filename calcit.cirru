
{} (:package |app)
  :configs $ {} (:expose-port 6011) (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |%draft-plugin-actions $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696094891423) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696094893250) (:by |u0) (:text |defrecord!)
              |b $ %{} :Leaf (:at 1696094891423) (:by |u0) (:text |%draft-plugin-actions)
              |h $ %{} :Expr (:at 1696094891423) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696094900310) (:by |u0) (:text |:render)
                  |b $ %{} :Expr (:at 1696094901915) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696094904724) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696094905627) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094906401) (:by |u0) (:text |self)
                      |h $ %{} :Expr (:at 1696094907015) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094908337) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696094910108) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696094910395) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696094910539) (:by |u0)
                                :data $ {}
                                  |h $ %{} :Leaf (:at 1696094912677) (:by |u0) (:text |:draft-plugin)
                                  |l $ %{} :Leaf (:at 1696094912677) (:by |u0) (:text |node)
                                  |o $ %{} :Leaf (:at 1696094912677) (:by |u0) (:text |*draft)
                                  |q $ %{} :Leaf (:at 1696094912677) (:by |u0) (:text |*show?)
                              |b $ %{} :Leaf (:at 1696094918678) (:by |u0) (:text |node)
              |l $ %{} :Expr (:at 1696094920343) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696094921595) (:by |u0) (:text |:show)
                  |b $ %{} :Expr (:at 1696094922251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696094922457) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696094923215) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094923989) (:by |u0) (:text |self)
                      |h $ %{} :Expr (:at 1696094924511) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094926574) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696094928191) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696094929253) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696094929253) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |:draft-plugin)
                                  |b $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |node)
                                  |h $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |*draft)
                                  |l $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |*show?)
                              |b $ %{} :Expr (:at 1696094934278) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094938112) (:by |u0) (:text |.set!)
                                  |b $ %{} :Leaf (:at 1696094942034) (:by |u0) (:text |*show?)
                                  |h $ %{} :Leaf (:at 1696094946169) (:by |u0) (:text |true)
              |m $ %{} :Expr (:at 1696094920343) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696094966027) (:by |u0) (:text |:hide)
                  |b $ %{} :Expr (:at 1696094922251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696094922457) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696094923215) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094923989) (:by |u0) (:text |self)
                      |h $ %{} :Expr (:at 1696094924511) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094926574) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696094928191) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696094929253) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696094929253) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |:draft-plugin)
                                  |b $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |node)
                                  |h $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |*draft)
                                  |l $ %{} :Leaf (:at 1696094929253) (:by |u0) (:text |*show?)
                              |b $ %{} :Expr (:at 1696094934278) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094938112) (:by |u0) (:text |.set!)
                                  |b $ %{} :Leaf (:at 1696094942034) (:by |u0) (:text |*show?)
                                  |h $ %{} :Leaf (:at 1696094967051) (:by |u0) (:text |false)
              |o $ %{} :Expr (:at 1696094948129) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696094949607) (:by |u0) (:text |:get)
                  |b $ %{} :Expr (:at 1696094953756) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |fn)
                      |b $ %{} :Expr (:at 1696094953756) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |self)
                      |h $ %{} :Expr (:at 1696094953756) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |tag-match)
                          |b $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |self)
                          |h $ %{} :Expr (:at 1696094953756) (:by |u0)
                            :data $ {}
                              |T $ %{} :Expr (:at 1696094953756) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |:draft-plugin)
                                  |b $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |node)
                                  |h $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |*draft)
                                  |l $ %{} :Leaf (:at 1696094953756) (:by |u0) (:text |*show?)
                              |b $ %{} :Expr (:at 1696094956587) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094957732) (:by |u0) (:text |.deref)
                                  |b $ %{} :Leaf (:at 1696094959146) (:by |u0) (:text |*draft)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1695981551891) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1695981554221) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696063204327) (:by |u0) (:text |comp-container)
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
                      |h $ %{} :Expr (:at 1696007220160) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696007228194) (:by |u0) (:text |*show-scan)
                          |b $ %{} :Expr (:at 1696007228717) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696007230024) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1696065334282) (:by |u0) (:text |false)
                      |l $ %{} :Expr (:at 1696007885183) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696007887046) (:by |u0) (:text |*result)
                          |b $ %{} :Expr (:at 1696007888117) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696007889079) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1696007889569) (:by |u0) (:text |nil)
                      |q $ %{} :Expr (:at 1696094667301) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094673833) (:by |u0) (:text |draft-plugin)
                          |b $ %{} :Expr (:at 1696094674910) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696094676962) (:by |u0) (:text |use-draft-plugin)
                              |b $ %{} :Expr (:at 1696095545231) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696095545776) (:by |u0) (:text |fn)
                                  |b $ %{} :Expr (:at 1696095546141) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095549800) (:by |u0) (:text |content)
                                  |h $ %{} :Expr (:at 1696095551178) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095557403) (:by |u0) (:text |.set!)
                                      |b $ %{} :Leaf (:at 1696095559702) (:by |u0) (:text |*result)
                                      |h $ %{} :Leaf (:at 1696095560739) (:by |u0) (:text |content)
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
                  |j $ %{} :Expr (:at 1696240635722) (:by |u0)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1696240636525) (:by |u0) (:text |<><>)
                      |L $ %{} :Expr (:at 1696260250922) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696260251410) (:by |u0) (:text |<>)
                          |b $ %{} :Leaf (:at 1696260254708) (:by |u0) (:text |StatusBar)
                          |h $ %{} :Expr (:at 1696260289846) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696260292437) (:by |u0) (:text |js{})
                              |b $ %{} :Expr (:at 1696260292809) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696260293580) (:by |u0) (:text |:style)
                                  |b $ %{} :Leaf (:at 1696260295469) (:by |u0) (:text "|\"light")
                      |T $ %{} :Expr (:at 1696240594847) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |comp-scan)
                          |b $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |*show-scan)
                          |h $ %{} :Expr (:at 1696240594847) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |fn)
                              |b $ %{} :Expr (:at 1696240594847) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |content)
                              |h $ %{} :Expr (:at 1696240594847) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |let)
                                  |b $ %{} :Expr (:at 1696240594847) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1696240594847) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |c)
                                          |b $ %{} :Expr (:at 1696240594847) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |.trim)
                                              |b $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |content)
                                  |h $ %{} :Expr (:at 1696240594847) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |.set!)
                                      |b $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |*result)
                                      |h $ %{} :Leaf (:at 1696240594847) (:by |u0) (:text |c)
                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |if)
                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |not)
                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |@*show-scan)
                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |View)
                              |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:style)
                                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:paddingTop)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |40)
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:paddingLeft)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |20)
                                          |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:backgroundColor)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"#eee")
                                          |o $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:height)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"100%")
                              |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |View)
                                  |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                  |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |Text)
                                      |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:style)
                                              |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:fontFamily)
                                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"monospace")
                                                  |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:marginBottom)
                                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |12)
                                      |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |str)
                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"Scan result: ")
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js/JSON.stringify)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |@*result)
                              |o $ %{} :Expr (:at 1696240640962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |View)
                                  |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:style)
                                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:flexDirection)
                                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"row")
                                              |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:gap)
                                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |8)
                                  |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |if)
                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |@*permission)
                                      |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |Button)
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:title)
                                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"Scan")
                                              |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:onPress)
                                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |fn)
                                                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |e)
                                                      |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |.swap!)
                                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |*show-scan)
                                                          |h $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |not)
                                      |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |Text)
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                          |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |str-spaced)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text "|\"No permission")
                                              |h $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |@*permission)
                                  |q $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |Button)
                                      |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:title)
                                              |b $ %{} :Leaf (:at 1696323332237) (:by |u0) (:text "|\"File")
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:onPress)
                                              |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |fn)
                                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |e)
                                                  |e $ %{} :Expr (:at 1696322138315) (:by |u0)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1696322143323) (:by |u0) (:text |hint-fn)
                                                      |T $ %{} :Leaf (:at 1696322140686) (:by |u0) (:text |async)
                                                  |h $ %{} :Expr (:at 1696322154740) (:by |u0)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1696322155391) (:by |u0) (:text |let)
                                                      |T $ %{} :Expr (:at 1696322156273) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1696322156402) (:by |u0)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1696322158465) (:by |u0) (:text |result)
                                                              |T $ %{} :Expr (:at 1696322147766) (:by |u0)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1696322149320) (:by |u0) (:text |js-await)
                                                                  |T $ %{} :Expr (:at 1696322132207) (:by |u0)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1696322749429) (:by |u0) (:text |launchImageLibraryAsync)
                                                                      |b $ %{} :Expr (:at 1696322160212) (:by |u0)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1696322161244) (:by |u0) (:text |js{})
                                                                          |b $ %{} :Expr (:at 1696322163746) (:by |u0)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1696322168538) (:by |u0) (:text |:allowEditing)
                                                                              |b $ %{} :Leaf (:at 1696322169358) (:by |u0) (:text |true)
                                                                          |h $ %{} :Expr (:at 1696322169860) (:by |u0)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1696322173099) (:by |u0) (:text |:quality)
                                                                              |b $ %{} :Leaf (:at 1696322173430) (:by |u0) (:text |1)
                                                      |b $ %{} :Expr (:at 1696322186321) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696322187520) (:by |u0) (:text |if)
                                                          |b $ %{} :Expr (:at 1696322188709) (:by |u0)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1696322194212) (:by |u0) (:text |.-canceled)
                                                              |T $ %{} :Leaf (:at 1696322187890) (:by |u0) (:text |result)
                                                          |g $ %{} :Expr (:at 1696322262464) (:by |u0)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1696323299595) (:by |u0) (:text |.!show)
                                                              |b $ %{} :Leaf (:at 1696323297798) (:by |u0) (:text |ToastAndroid)
                                                              |h $ %{} :Leaf (:at 1696322657094) (:by |u0) (:text "|\"cancelled by user")
                                                              |l $ %{} :Expr (:at 1696323302527) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696323305896) (:by |u0) (:text |.-SHORT)
                                                                  |b $ %{} :Leaf (:at 1696323306797) (:by |u0) (:text |ToastAndroid)
                                                          |l $ %{} :Expr (:at 1696323121046) (:by |u0)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1696323121599) (:by |u0) (:text |let)
                                                              |T $ %{} :Expr (:at 1696323122262) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Expr (:at 1696323122421) (:by |u0)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1696323126987) (:by |u0) (:text |results)
                                                                      |T $ %{} :Expr (:at 1696323118353) (:by |u0)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1696323120543) (:by |u0) (:text |js-await)
                                                                          |T $ %{} :Expr (:at 1696323110700) (:by |u0)
                                                                            :data $ {}
                                                                              |5 $ %{} :Leaf (:at 1696323117744) (:by |u0) (:text |.!scanFromURLAsync)
                                                                              |D $ %{} :Leaf (:at 1696323111193) (:by |u0) (:text |BarCodeScanner)
                                                                              |T $ %{} :Expr (:at 1696323108179) (:by |u0)
                                                                                :data $ {}
                                                                                  |D $ %{} :Leaf (:at 1696323163863) (:by |u0) (:text |.-uri)
                                                                                  |T $ %{} :Expr (:at 1696323096873) (:by |u0)
                                                                                    :data $ {}
                                                                                      |D $ %{} :Leaf (:at 1696323107664) (:by |u0) (:text |.-0)
                                                                                      |T $ %{} :Expr (:at 1696322213462) (:by |u0)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1696323103657) (:by |u0) (:text |.-assets)
                                                                                          |b $ %{} :Leaf (:at 1696322219036) (:by |u0) (:text |result)
                                                              |b $ %{} :Expr (:at 1696323176940) (:by |u0)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1696323179608) (:by |u0) (:text |if)
                                                                  |L $ %{} :Expr (:at 1696323184300) (:by |u0)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1696323184873) (:by |u0) (:text |>)
                                                                      |T $ %{} :Expr (:at 1696323180417) (:by |u0)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1696323183189) (:by |u0) (:text |.-length)
                                                                          |b $ %{} :Leaf (:at 1696323183853) (:by |u0) (:text |results)
                                                                      |b $ %{} :Leaf (:at 1696323185700) (:by |u0) (:text |0)
                                                                  |T $ %{} :Expr (:at 1696323209839) (:by |u0)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1696323210374) (:by |u0) (:text |.set!)
                                                                      |L $ %{} :Leaf (:at 1696323210374) (:by |u0) (:text |*result)
                                                                      |T $ %{} :Expr (:at 1696323204330) (:by |u0)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1696323204330) (:by |u0) (:text |->)
                                                                          |b $ %{} :Leaf (:at 1696323204330) (:by |u0) (:text |results)
                                                                          |h $ %{} :Leaf (:at 1696323204330) (:by |u0) (:text |.-0)
                                                                          |l $ %{} :Leaf (:at 1696323204330) (:by |u0) (:text |.-data)
                                  |s $ %{} :Expr (:at 1696323334204) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |<>)
                                      |b $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |Button)
                                      |h $ %{} :Expr (:at 1696323334204) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |js{})
                                          |b $ %{} :Expr (:at 1696323334204) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |:title)
                                              |b $ %{} :Leaf (:at 1696323350243) (:by |u0) (:text "|\"Text")
                                          |h $ %{} :Expr (:at 1696323334204) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |:onPress)
                                              |b $ %{} :Expr (:at 1696323334204) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |fn)
                                                  |b $ %{} :Expr (:at 1696323334204) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |e)
                                                  |h $ %{} :Expr (:at 1696323334204) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |.show)
                                                      |b $ %{} :Leaf (:at 1696323334204) (:by |u0) (:text |draft-plugin)
                              |q $ %{} :Expr (:at 1696240640962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |if-let)
                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |content)
                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |@*result)
                                  |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |if)
                                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |not)
                                          |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |blank?)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |content)
                                      |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |View)
                                          |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:style)
                                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                                      |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:marginTop)
                                                          |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |16)
                                          |l $ %{} :Expr (:at 1696240640962) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |<>)
                                              |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |QRCode)
                                              |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |js{})
                                                  |b $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:value)
                                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |content)
                                                  |h $ %{} :Expr (:at 1696240640962) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |:size)
                                                      |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |320)
                              |s $ %{} :Expr (:at 1696240640962) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |.render)
                                  |b $ %{} :Leaf (:at 1696240640962) (:by |u0) (:text |draft-plugin)
        |comp-scan $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696095628969) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696095628969) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696095628969) (:by |u0) (:text |comp-scan)
              |h $ %{} :Expr (:at 1696095628969) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696095656685) (:by |u0) (:text |*show-scan)
                  |T $ %{} :Leaf (:at 1696095642699) (:by |u0) (:text |on-scan)
              |l $ %{} :Expr (:at 1696095630463) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696095712661) (:by |u0) (:text |<>)
                  |T $ %{} :Leaf (:at 1696095712045) (:by |u0) (:text |Modal)
                  |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |js{})
                      |X $ %{} :Expr (:at 1696240228677) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240231260) (:by |u0) (:text |:animationType)
                          |b $ %{} :Leaf (:at 1696240235444) (:by |u0) (:text "|\"fade")
                      |e $ %{} :Expr (:at 1696240263406) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240265197) (:by |u0) (:text |:transparent)
                          |b $ %{} :Leaf (:at 1696240265890) (:by |u0) (:text |true)
                      |j $ %{} :Expr (:at 1696240570159) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240571300) (:by |u0) (:text |:visible)
                          |b $ %{} :Leaf (:at 1696240576110) (:by |u0) (:text |@*show-scan)
                      |n $ %{} :Expr (:at 1696240673312) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696240678065) (:by |u0) (:text |:onRequestClose)
                          |b $ %{} :Expr (:at 1696240678902) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696240679184) (:by |u0) (:text |fn)
                              |b $ %{} :Expr (:at 1696240679449) (:by |u0)
                                :data $ {}
                              |h $ %{} :Expr (:at 1696240684739) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696240684739) (:by |u0) (:text |.set!)
                                  |b $ %{} :Leaf (:at 1696240684739) (:by |u0) (:text |*show-scan)
                                  |h $ %{} :Leaf (:at 1696240684739) (:by |u0) (:text |false)
                  |l $ %{} :Expr (:at 1696095630463) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |<>)
                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |BarCodeScanner)
                      |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |js{})
                          |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |:onBarCodeScanned)
                              |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |fn)
                                  |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |info)
                                  |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |js/console.log)
                                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text "|\"Scaned")
                                      |h $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |info)
                                  |l $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |.set!)
                                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |*show-scan)
                                      |h $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |false)
                                  |o $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |K $ %{} :Leaf (:at 1696095667686) (:by |u0) (:text |on-scan)
                                      |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |.-data)
                                          |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |info)
                          |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |:style)
                              |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |js{})
                                  |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |:width)
                                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text "|\"100%")
                                  |l $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |:height)
                                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text "|\"100%")
                                  |q $ %{} :Expr (:at 1696240267660) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696240267660) (:by |u0) (:text |:backgroundColor)
                                      |b $ %{} :Leaf (:at 1696240267660) (:by |u0) (:text "|\"hsla(0,0%,0%,0.7)")
                  |o $ %{} :Expr (:at 1696095630463) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |<>)
                      |b $ %{} :Leaf (:at 1696096160620) (:by |u0) (:text |Pressable)
                      |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |js{})
                          |a $ %{} :Expr (:at 1696096164867) (:by |u0)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1696096165870) (:by |u0) (:text |:style)
                              |T $ %{} :Expr (:at 1696096163854) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696096163854) (:by |u0) (:text |style-merge)
                                  |b $ %{} :Leaf (:at 1696096163854) (:by |u0) (:text |style-press-button)
                                  |h $ %{} :Leaf (:at 1696096163854) (:by |u0) (:text |style-close-position)
                          |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |:onPress)
                              |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |fn)
                                  |b $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |e)
                                  |h $ %{} :Expr (:at 1696095630463) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |.set!)
                                      |b $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |*show-scan)
                                      |h $ %{} :Leaf (:at 1696095630463) (:by |u0) (:text |false)
                      |l $ %{} :Expr (:at 1696096172323) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |<>)
                          |b $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |Text)
                          |h $ %{} :Expr (:at 1696096172323) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |js{})
                              |b $ %{} :Expr (:at 1696096172323) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |:style)
                                  |b $ %{} :Expr (:at 1696096172323) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |js{})
                                      |b $ %{} :Expr (:at 1696096172323) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text |:color)
                                          |b $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text "|\"#fff")
                          |l $ %{} :Leaf (:at 1696096172323) (:by |u0) (:text "|\"Close")
        |style-close-position $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696065498217) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696065498217) (:by |u0) (:text |def)
              |b $ %{} :Leaf (:at 1696065498217) (:by |u0) (:text |style-close-position)
              |h $ %{} :Expr (:at 1696065499475) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696065507977) (:by |u0) (:text |js{})
                  |t $ %{} :Expr (:at 1696065499475) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text |:position)
                      |b $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text "|\"absolute")
                  |u $ %{} :Expr (:at 1696065499475) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text |:top)
                      |b $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text |40)
                  |v $ %{} :Expr (:at 1696065499475) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text |:right)
                      |b $ %{} :Leaf (:at 1696065499475) (:by |u0) (:text |20)
        |style-merge $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696065462523) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696065463516) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696065462523) (:by |u0) (:text |style-merge)
              |h $ %{} :Expr (:at 1696065462523) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696065467274) (:by |u0) (:text |&)
                  |b $ %{} :Leaf (:at 1696065467938) (:by |u0) (:text |args)
              |l $ %{} :Expr (:at 1696065468611) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696065472848) (:by |u0) (:text |js/Object.assign)
                  |b $ %{} :Expr (:at 1696065474442) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065475260) (:by |u0) (:text |js{})
                  |h $ %{} :Leaf (:at 1696065478155) (:by |u0) (:text |&)
                  |l $ %{} :Leaf (:at 1696065479848) (:by |u0) (:text |args)
        |style-press-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696065403687) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696065403687) (:by |u0) (:text |def)
              |b $ %{} :Leaf (:at 1696065403687) (:by |u0) (:text |style-press-button)
              |h $ %{} :Expr (:at 1696065405373) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |js{})
                  |b $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:backgroundColor)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text "|\"#555")
                  |h $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:color)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text "|\"#fff")
                  |l $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:justifyContent)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text "|\"center")
                  |o $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:alignItems)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text "|\"center")
                  |q $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:width)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |80)
                  |s $ %{} :Expr (:at 1696065405373) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |:height)
                      |b $ %{} :Leaf (:at 1696065405373) (:by |u0) (:text |40)
        |use-draft-plugin $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1696094684631) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1696094684631) (:by |u0) (:text |defn)
              |b $ %{} :Leaf (:at 1696094684631) (:by |u0) (:text |use-draft-plugin)
              |h $ %{} :Expr (:at 1696094684631) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696095533388) (:by |u0) (:text |on-submit)
              |l $ %{} :Expr (:at 1696094686185) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1696094689880) (:by |u0) (:text |let)
                  |b $ %{} :Expr (:at 1696094690175) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1696094690295) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094693554) (:by |u0) (:text |*draft)
                          |b $ %{} :Expr (:at 1696094693878) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696094697208) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1696094697955) (:by |u0) (:text "|\"")
                      |b $ %{} :Expr (:at 1696094699347) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094702949) (:by |u0) (:text |*show?)
                          |b $ %{} :Expr (:at 1696094704102) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696094705250) (:by |u0) (:text |use-atom)
                              |b $ %{} :Leaf (:at 1696094706482) (:by |u0) (:text |false)
                      |h $ %{} :Expr (:at 1696094717447) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696094718986) (:by |u0) (:text |node)
                          |b $ %{} :Expr (:at 1696094719259) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696094720831) (:by |u0) (:text |<>)
                              |b $ %{} :Leaf (:at 1696094721868) (:by |u0) (:text |Modal)
                              |h $ %{} :Expr (:at 1696094722445) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696094723571) (:by |u0) (:text |js{})
                                  |b $ %{} :Expr (:at 1696094724642) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696094727230) (:by |u0) (:text |:visible)
                                      |b $ %{} :Expr (:at 1696094727784) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696094730053) (:by |u0) (:text |.deref)
                                          |b $ %{} :Leaf (:at 1696094732897) (:by |u0) (:text |*show?)
                                  |h $ %{} :Expr (:at 1696094739644) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696094742683) (:by |u0) (:text |:onRequestClose)
                                      |b $ %{} :Expr (:at 1696094743314) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696094743582) (:by |u0) (:text |fn)
                                          |b $ %{} :Expr (:at 1696094744078) (:by |u0)
                                            :data $ {}
                                          |h $ %{} :Expr (:at 1696094745196) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696094749919) (:by |u0) (:text |.set!)
                                              |b $ %{} :Leaf (:at 1696094752532) (:by |u0) (:text |*show?)
                                              |h $ %{} :Leaf (:at 1696094753163) (:by |u0) (:text |false)
                                  |l $ %{} :Expr (:at 1696094768327) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696094770486) (:by |u0) (:text |:animationType)
                                      |b $ %{} :Leaf (:at 1696240117326) (:by |u0) (:text "|\"fade")
                                  |o $ %{} :Expr (:at 1696094772752) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696094774510) (:by |u0) (:text |:transparent)
                                      |b $ %{} :Leaf (:at 1696094775098) (:by |u0) (:text |true)
                              |l $ %{} :Expr (:at 1696095201583) (:by |u0)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1696095202276) (:by |u0) (:text |<>)
                                  |L $ %{} :Leaf (:at 1696095204358) (:by |u0) (:text |View)
                                  |P $ %{} :Expr (:at 1696095238910) (:by |u0)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1696095241293) (:by |u0) (:text |js{})
                                      |T $ %{} :Expr (:at 1696095242169) (:by |u0)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1696095244503) (:by |u0) (:text |:style)
                                          |T $ %{} :Expr (:at 1696095207788) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696095206923) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696095209380) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095214051) (:by |u0) (:text |:justifyContent)
                                                  |b $ %{} :Leaf (:at 1696095215868) (:by |u0) (:text "|\"center")
                                              |h $ %{} :Expr (:at 1696095216331) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095219278) (:by |u0) (:text |:alignItems)
                                                  |b $ %{} :Leaf (:at 1696095221404) (:by |u0) (:text "|\"center")
                                              |l $ %{} :Expr (:at 1696095231123) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095231995) (:by |u0) (:text |:flex)
                                                  |b $ %{} :Leaf (:at 1696095232414) (:by |u0) (:text |1)
                                              |o $ %{} :Expr (:at 1696096336757) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696240127912) (:by |u0) (:text |:backgroundColor)
                                                  |b $ %{} :Leaf (:at 1696240144028) (:by |u0) (:text "|\"hsla(0,0%,0%,0.6)")
                                  |R $ %{} :Expr (:at 1696095318017) (:by |u0)
                                    :data $ {}
                                      |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |<>)
                                      |h $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |View)
                                      |l $ %{} :Expr (:at 1696095318017) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |js{})
                                          |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:style)
                                              |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |js{})
                                                  |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:marginTop)
                                                      |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |8)
                                                  |h $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:flexDirection)
                                                      |b $ %{} :Leaf (:at 1696096447231) (:by |u0) (:text "|\"column")
                                                  |l $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:gap)
                                                      |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |8)
                                                  |q $ %{} :Expr (:at 1696095379398) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |:backgroundColor)
                                                      |b $ %{} :Leaf (:at 1696096361787) (:by |u0) (:text "|\"#fff")
                                                  |s $ %{} :Expr (:at 1696095379398) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |:borderWidth)
                                                      |b $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |1)
                                                  |t $ %{} :Expr (:at 1696095379398) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |:padding)
                                                      |b $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |8)
                                                  |u $ %{} :Expr (:at 1696095379398) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |:borderRadius)
                                                      |b $ %{} :Leaf (:at 1696095379398) (:by |u0) (:text |8)
                                      |o $ %{} :Expr (:at 1696095318017) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |<>)
                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |TextInput)
                                          |h $ %{} :Expr (:at 1696095318017) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:value)
                                                  |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |.deref)
                                                      |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |*draft)
                                              |h $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:style)
                                                  |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |js{})
                                                      |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:borderWidth)
                                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |1)
                                                      |h $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:width)
                                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |260)
                                                      |l $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:paddingHorizontal)
                                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |8)
                                              |j $ %{} :Expr (:at 1696096540397) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696096544323) (:by |u0) (:text |:placeholder)
                                                  |b $ %{} :Leaf (:at 1696096551580) (:by |u0) (:text "|\"raw text")
                                              |l $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |:onChangeText)
                                                  |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |fn)
                                                      |b $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |t)
                                                      |h $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |;)
                                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |js/console.log)
                                                          |h $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text "|\"Change")
                                                          |l $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |t)
                                                      |l $ %{} :Expr (:at 1696095318017) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |.set!)
                                                          |b $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |*draft)
                                                          |h $ %{} :Leaf (:at 1696095318017) (:by |u0) (:text |t)
                                      |q $ %{} :Expr (:at 1696095396885) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1696095396885) (:by |u0) (:text |<>)
                                          |b $ %{} :Leaf (:at 1696095396885) (:by |u0) (:text |View)
                                          |h $ %{} :Expr (:at 1696095396885) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696095396885) (:by |u0) (:text |js{})
                                              |b $ %{} :Expr (:at 1696095396885) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095396885) (:by |u0) (:text |:style)
                                                  |b $ %{} :Expr (:at 1696095396885) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696095396885) (:by |u0) (:text |js{})
                                                      |b $ %{} :Expr (:at 1696095428918) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696095429966) (:by |u0) (:text |:style)
                                                          |b $ %{} :Expr (:at 1696095430602) (:by |u0)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1696095432445) (:by |u0) (:text |js{})
                                                              |b $ %{} :Expr (:at 1696095434496) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696095440641) (:by |u0) (:text |:flexDirection)
                                                                  |b $ %{} :Leaf (:at 1696096505513) (:by |u0) (:text |:row)
                                                              |e $ %{} :Expr (:at 1696096509692) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696096509692) (:by |u0) (:text |:justifyContent)
                                                                  |b $ %{} :Leaf (:at 1696096509692) (:by |u0) (:text "|\"space-between")
                                                              |h $ %{} :Expr (:at 1696095443651) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696095444408) (:by |u0) (:text |:gap)
                                                                  |b $ %{} :Leaf (:at 1696095444946) (:by |u0) (:text |8)
                                          |i $ %{} :Expr (:at 1696096480180) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696096481528) (:by |u0) (:text |<>)
                                              |b $ %{} :Leaf (:at 1696096500289) (:by |u0) (:text |View)
                                              |h $ %{} :Expr (:at 1696096497451) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696096495850) (:by |u0) (:text |js{})
                                          |j $ %{} :Expr (:at 1696095416866) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1696095418049) (:by |u0) (:text |<>)
                                              |b $ %{} :Leaf (:at 1696095425264) (:by |u0) (:text |View)
                                              |h $ %{} :Expr (:at 1696095420812) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696095421804) (:by |u0) (:text |js{})
                                                  |b $ %{} :Expr (:at 1696096391084) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696096392567) (:by |u0) (:text |:style)
                                                      |b $ %{} :Expr (:at 1696096393418) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696096396616) (:by |u0) (:text |js{})
                                              |l $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |<>)
                                                  |b $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |Button)
                                                  |h $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |js{})
                                                      |b $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |:title)
                                                          |b $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text "|\"Submit")
                                                      |h $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |:onPress)
                                                          |b $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |fn)
                                                              |b $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |e)
                                                              |h $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |on-submit)
                                                                  |b $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |.deref)
                                                                      |b $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |*draft)
                                                              |l $ %{} :Expr (:at 1696096435688) (:by |u0)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |.set!)
                                                                  |b $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |*show?)
                                                                  |h $ %{} :Leaf (:at 1696096435688) (:by |u0) (:text |false)
                  |h $ %{} :Expr (:at 1696094826123) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1696094828355) (:by |u0) (:text |%::)
                      |b $ %{} :Leaf (:at 1696094850179) (:by |u0) (:text |%draft-plugin-actions)
                      |c $ %{} :Leaf (:at 1696094852238) (:by |u0) (:text |:draft-plugin)
                      |e $ %{} :Leaf (:at 1696094839592) (:by |u0) (:text |node)
                      |f $ %{} :Leaf (:at 1696094886166) (:by |u0) (:text |*draft)
                      |h $ %{} :Leaf (:at 1696094837027) (:by |u0) (:text |*show?)
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
                        |X $ %{} :Leaf (:at 1696094713568) (:by |u0) (:text |Modal)
                        |Z $ %{} :Leaf (:at 1696095989030) (:by |u0) (:text |Button)
                        |a $ %{} :Leaf (:at 1696323293227) (:by |u0) (:text |ToastAndroid)
                        |b $ %{} :Leaf (:at 1695576242289) (:by |u0) (:text |Text)
                        |h $ %{} :Leaf (:at 1695576247606) (:by |u0) (:text |StyleSheet)
                        |l $ %{} :Leaf (:at 1695576260086) (:by |u0) (:text |ScrollView)
                        |o $ %{} :Leaf (:at 1695576283611) (:by |u0) (:text |SafeAreaView)
                        |q $ %{} :Leaf (:at 1696007443063) (:by |u0) (:text |Pressable)
                        |s $ %{} :Leaf (:at 1696072397465) (:by |u0) (:text |TextInput)
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
                |q $ %{} :Expr (:at 1696072081298) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696072085768) (:by |u0) (:text "|\"react-native-qrcode-svg")
                    |b $ %{} :Leaf (:at 1696072088105) (:by |u0) (:text |:default)
                    |h $ %{} :Leaf (:at 1696072090207) (:by |u0) (:text |QRCode)
                |s $ %{} :Expr (:at 1696260271856) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696260281018) (:by |u0) (:text "|\"expo-status-bar")
                    |b $ %{} :Leaf (:at 1696260282713) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1696260279385) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696260274832) (:by |u0) (:text |StatusBar)
                |t $ %{} :Expr (:at 1696322117569) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696322118241) (:by |u0) (:text "|\"expo-image-picker")
                    |b $ %{} :Leaf (:at 1696322742276) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1696322743982) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696322747269) (:by |u0) (:text |launchImageLibraryAsync)
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
                  |T $ %{} :Leaf (:at 1696258470899) (:by |u0) (:text |registerRootComponent)
                  |b $ %{} :Leaf (:at 1696258477384) (:by |u0) (:text |comp-container)
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
                |X $ %{} :Expr (:at 1696258451985) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696258518335) (:by |u0) (:text "|\"expo/build/launch/registerRootComponent")
                    |b $ %{} :Leaf (:at 1696258455849) (:by |u0) (:text |:default)
                    |h $ %{} :Leaf (:at 1696258467012) (:by |u0) (:text |registerRootComponent)
                |b $ %{} :Expr (:at 1695576388543) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695576393262) (:by |u0) (:text |app.comp.container)
                    |b $ %{} :Leaf (:at 1695576394830) (:by |u0) (:text |:refer)
                    |h $ %{} :Expr (:at 1695576395143) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695576396745) (:by |u0) (:text |comp-container)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
