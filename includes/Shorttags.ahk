#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ----------------------------------------------------------------------------
; "THE BEER-WARE LICENSE" (Revision 42):
; <xiphe@gmx.de> wrote this file. As long as you retain this notice you
; can do whatever you want with this stuff. If we meet some day, and you think
; this stuff is worth it, you can buy me a beer in return Hannes Diercks
; ----------------------------------------------------------------------------


;///////////////////////////////////////// Shorts

::#wpsalt::
Echo(GetHTML("https://api.wordpress.org/secret-key/1.1/salt/"))
return

;/// RANDOM PASSWORDS

lpw = ''
::#pw::	;Example: /jRz]wI`pihrHvYm
lpw := RandomStr()
Echo(lpw)
return

::#pwan:: ;Example: 5J681Y88u04bcVM8
lpw := RandomStrAN()
Echo(lpw)
return

::#pwa:: ;Example: UxOcvkyDOaulUZbe
lpw := RandomStrA()
Echo(lpw)
return

::#pwn:: ;Example: 0716221743838363
lpw := RandomInt()
Echo(lpw)
return

::#lpw:: ;the last entered Password
Echo(lpw)
return


::#mfg::
Echo(MFG)
return


::#mfga::
Echo(MFGA)
return


;/// PHP


::<?::
Echo("<?php`n`t`n?>")
Send {UP}
return

::#if::
Echo(TabStr(PHP_IF, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#sif::
Echo(TabStr(PHP_SHORT_IF, GetTabs()))
Send {Home}
Send {Right}
Send +{Right 8}
return

::#el::
Echo(TabStr(PHP_ELSE, GetTabs()))
Send {UP}
MarkHotString()
return

::#eif::
Echo(TabStr(PHP_ELSEIF, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#fe::
Echo(TabStr(PHP_FOREACH, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#sw::
Echo(TabStr(PHP_SWITCH, GetTabs()))
Send {UP 6}
MarkHotString()
return

::#swc::
Echo(TabStr(PHP_SWITCH_CASE, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#func::
Echo(TabStr(F_GEN, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#docc::
Echo(TabStr(DOC_COPY, GetTabs(true, 2, false)))
return

::#docp::
Echo(TabStr(DOC_PARAM, GetTabs(true, 2, false)))
MarkHotString()
return

::#docd::
Echo(TabStr(DOC_DATE, GetTabs(true, 2, false)))
return

::#doca::
Echo(TabStr(DOC_AUTHOR, GetTabs(true, 2, false)))
return

::#docr::
Echo(TabStr(DOC_RETURN, GetTabs(true, 2, false)))
return

::#docf::
Echo(TabStr(DOC_F, GetTabs()))
Send {UP 6}
MarkHotString()
return

::#doc::
Echo(TabStr(DOC, GetTabs()))
MarkHotString()
return

::#pub::
Echo(TabStr(F_PUB, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#priv::
Echo(TabStr(F_PRI, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#prot::
Echo(TabStr(F_PRO, GetTabs()))
Send {UP 2}
MarkHotString()
return

::#t::
Echo("$this->;")
Send {LEFT}
return

::#e::
Echo("echo `;")
Send {left}
return

::#v::
Echo("var_dump();")
Send {left 2}
return

::#d::
Echo("$this->debug();")
Send {left 2}
return



;/// JS

::#co::
Echo("console.log();")
Send {left 2}
return

::#al::
Echo("alert();")
Send {left 2}
return



;/// HTML TODO: Migrate to Strings and Use Echo()


:o:#bbt::
temp := ClipboardAll
Sleep,100
sleep 200
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.`nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec,`npellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate
Send ^v
Clipboard := temp
return

::#bbt2::
temp := ClipboardAll
Sleep,100
sleep 200
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.`nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,`nultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel,`naliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede`nmollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo`nligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.`nPhasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue.`nCurabitur ullamcorper ultricies nisi. Nam eget dui.`n`nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero,sit amet adipiscing sem neque sed ipsum.`nNam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut`nlibero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris`nsit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusnunc.
Send ^v
Clipboard := temp
return

::#bbt3::
temp := ClipboardAll
Sleep,100
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.`nAenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis,`nultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel,`naliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede`nmollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo`nligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus.`nPhasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue.`nCurabitur ullamcorper ultricies nisi. Nam eget dui.`n`nEtiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero,sit amet adipiscing sem neque sed ipsum.`nNam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut`nlibero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris`nsit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusnunc.Fusce vulputate eleifend sapien.`nVestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.`nNullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et`nultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia.`nNam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris.`nInteger ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc.`nNunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros,`nultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque`nfacilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur`nligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis`nvitae tortor. Donec posuere vulputate arcu.`nPhasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;`nSed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit.`nAenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In turpis.`n`nPellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna`ndolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar,`naugue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis`nin faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas`nvestibulum mollis diam. Pellentesque ut neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis`negestas. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque`nauctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. Pellentesque habitant`nmorbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi.`n`nPhasellus a est. Phasellus magna. In hac habitasse platea dictumst.`nCurabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit.`nPhasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam.`nSed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede.`nDonec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla.`nFusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenatis vulputate lorem. Morbi nec metus.`nPhasellus blandit leo ut odio. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.`nSed magna purus, fermentum eu, tincidunt eu, varius ut, felis. In auctor lobortis lacus. Quisque libero metus,`ncondimentum nec, tempor a, commodo mollis, magna. Vestibulum ullamcorper mauris at ligula. Fusce fermentum. Nullam cursus`nlacinia erat. Praesent blandit laoreet nibh. Fusce convallis metus id felis luctus adipiscing. Pellentesque egestas, neque`nsit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Quisque id mi. Ut tincidunt tincidunt erat.`nEtiam feugiat lorem non metus. Vestibulum dapibus nunc ac augue. Curabitur vestibulum aliquam leo. Praesent egestas neque eu enim.`nIn hac habitasse platea dictumst. Fusce a quam. Etiam ut purus mattis mauris sodales aliquam. Curabitur nisi. Quisque malesuada placerat`nnisl. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed augue ipsum, egestas nec, vestibulum et,`nmalesuada adipiscing, dui.`nestibulum facilisis, purus nec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin`nfermentum libero. Praesent nonummy mi in odio. Nunc interdum lacus sit amet orci. Vestibulum rutrum, mi nec elementum vehicula,`neros quam gravida nisl, id fringilla neque ante vel mi. Morbi mollis tellus ac sapien. Phasellus volutpat, metus eget egestas`nmollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Sed in libero ut nibh placerat accumsan.`nProin faucibus arcu quis ante. In consectetuer turpis ut velit. Nulla sit amet est. Praesent metus tellus, elementum eu,`nsemper a, adipiscing nec, purus. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Suspendisse feugiat.`nSuspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Praesent nec nisl a purus blandit viverra. Praesent ac massa`nat ligula laoreet iaculis. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Mauris turpis nunc, blandit et,`nvolutpat molestie, porta ut, ligula. Fusce pharetra convallis urna. Quisque ut nisi. Donec mi odio, faucibus at, scelerisque quis.
Send ^v
Clipboard := temp
return

:o:#bt::
temp := ClipboardAll
Sleep,100
sleep 200
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate
Send ^v
Clipboard := temp
return

::#bt2::
temp := ClipboardAll
Sleep,100
sleep 200
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.  Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero,sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusnunc.
Send ^v
Clipboard := temp
return

::#bt3::
temp := ClipboardAll
Sleep,100
clipboard = Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.  Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero,sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursusnunc.Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed lectus. Donec mollis hendrerit risus. Phasellus nec sem in justo pellentesque facilisis. Etiam imperdiet imperdiet orci. Nunc nec neque. Phasellus leo dolor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In turpis.  Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In dui magna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis quis tortor malesuada pretium. Pellentesque auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi.  Phasellus a est. Phasellus magna. In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenatis vulputate lorem. Morbi nec metus. Phasellus blandit leo ut odio. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. In auctor lobortis lacus. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Vestibulum ullamcorper mauris at ligula. Fusce fermentum. Nullam cursus lacinia erat. Praesent blandit laoreet nibh. Fusce convallis metus id felis luctus adipiscing. Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Quisque id mi. Ut tincidunt tincidunt erat. Etiam feugiat lorem non metus. Vestibulum dapibus nunc ac augue. Curabitur vestibulum aliquam leo. Praesent egestas neque eu enim. In hac habitasse platea dictumst. Fusce a quam. Etiam ut purus mattis mauris sodales aliquam. Curabitur nisi. Quisque malesuada placerat nisl. Nam ipsum risus, rutrum vitae, vestibulum eu, molestie vel, lacus. Sed augue ipsum, egestas nec, vestibulum et, malesuada adipiscing, dui. estibulum facilisis, purus nec pulvinar iaculis, ligula mi congue nunc, vitae euismod ligula urna in dolor. Mauris sollicitudin fermentum libero. Praesent nonummy mi in odio. Nunc interdum lacus sit amet orci. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Morbi mollis tellus ac sapien. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Sed in libero ut nibh placerat accumsan. Proin faucibus arcu quis ante. In consectetuer turpis ut velit. Nulla sit amet est. Praesent metus tellus, elementum eu, semper a, adipiscing nec, purus. Cras risus ipsum, faucibus ut, ullamcorper id, varius ac, leo. Suspendisse feugiat. Suspendisse enim turpis, dictum sed, iaculis a, condimentum nec, nisi. Praesent nec nisl a purus blandit viverra. Praesent ac massa at ligula laoreet iaculis. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Mauris turpis nunc, blandit et, volutpat molestie, porta ut, ligula. Fusce pharetra convallis urna. Quisque ut nisi. Donec mi odio, faucibus at, scelerisque quis.
Send ^v
Clipboard := temp
return

::#p::
temp := ClipboardAll
Sleep,100
clipboard=<p>`n`tfacilisis enim ultricies condimentum, erat facilisis. tempor porttitor, placerat et enim augue, eros amet, Mauris vitae, dui Vestibulum eu sed, wisi, Aliquam est ullamcorper mi, tincidunt ornare accumsan et malesuada sit egestas. senectus eget, luctus, wisi. ac erat Donec dui. turpis feugiat non pulvinar in faucibus, lacus vitae fermentum, erat. amet, sit condimentum habitant fames sit eleifend neque egestas Vestibulum dapibus, neque libero eros semper. eu quis, felis. commodo amet pharetra. tristique tempus amet est. Pellentesque tortor cursus sagittis Ut ante. Nam magna netus vulputate id sit ipsum eu quam, metus vitae, elit tincidunt Aenean eget leo. ac orci, rutrum mi et tortor turpis egestas Quisque Praesent quam sapien Aenean volutpat. Donec morbi ultricies `n</p>
Send ^v
Clipboard := temp
return

::#p2::
temp := ClipboardAll
Sleep,100
clipboard=<p>`n`tsemper. libero placerat egestas. ante. et Aenean tempor habitant ac amet, Pellentesque feugiat egestas tortor ultricies mi morbi quam, est. Mauris Vestibulum quam malesuada sit vitae leo. vitae, et tristique fames eu ultricies Donec eleifend sit netus turpis senectus eget, amet `n</p>
Send ^v
Clipboard := temp
return

::#p3::
temp := ClipboardAll
Sleep,100
clipboard=<p>`n`thabitant et Pellentesque malesuada senectus morbi netus et turpis egestas. fames ac tristique `n</p>
Send ^v
Clipboard := temp
return

::#u1::
temp := ClipboardAll
Sleep,100
clipboard=<ul>`n`t<li>`n`t`tLorem ipsum dolor sit amet, consectetuer adipiscing elit.`n`t</li>`n`t<li>`n`t`tAliquam tincidunt mauris eu risus.`n`t</li>`n`t<li>`n`t`tVestibulum auctor dapibus neque.`n`t</li>`n</ul>
Send ^v
Clipboard := temp
return

::#u2::
temp := ClipboardAll
Sleep,100
clipboard=<ul>`n`t<li>`n`t`tMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.`n`t</li>`n`t<li>`n`t`tPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.`n`t</li>`n`t<li>`n`t`thasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.`n`t</li>`n`t<li>`n`t`tPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.`n`t</li>`n</ul>
Send ^v
Clipboard := temp
return

::#o1::
temp := ClipboardAll
Sleep,100
clipboard=<ol>`n`t<li>`n`t`tLorem ipsum dolor sit amet, consectetuer adipiscing elit.`n`t</li>`n`t<li>`n`t`tAliquam tincidunt mauris eu risus.`n`t</li>`n`t<li>`n`t`tVestibulum auctor dapibus neque.`n`t</li>`n</ol>
Send ^v
Clipboard := temp
return

::#o2::
temp := ClipboardAll
Sleep,100
clipboard=<ol>`n`t<li>`n`t`tMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.`n`t</li>`n`t<li>`n`t`tPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.`n`t</li>`n`t<li>`n`t`tPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.`n`t</li>`n`t<li>`n`t`tPellentesque fermentum dolor. Aliquam quam lectus, facilisis auctor, ultrices ut, elementum vulputate, nunc.`n`t</li>`n</ol>
Send ^v
Clipboard := temp
return

::#div::
temp := ClipboardAll
Sleep,100
clipboard=<div>`n`t`n</div>
Send ^v
Send {Up}
Clipboard := temp
return

::#i::
temp := ClipboardAll
Sleep,100
clipboard := " id=`"`"`"`" "
Send ^v
Send {Left 2}
Clipboard := temp
return

::#c::
temp := ClipboardAll
Sleep,100
clipboard := " class=`"`"`"`" "
Send ^v
Send {Left 2}
Clipboard := temp
return

::#a::
temp := ClipboardAll
Sleep,100
clipboard = <a href="" title=""></a>
Send ^v
Send {Left 15}
Clipboard := temp
return

::#img::
temp := ClipboardAll
Sleep,100
clipboard = <img src="" alt="" />
Send ^v
Send {Left 11}
Clipboard := temp
return

::#desc::
temp := ClipboardAll
Sleep,100
clipboard = `/*----------------------------------------- DESCRIPTION -----------------------------------------*/
Send ^v
Send {Left 44}
Send +{left 11}
Clipboard := temp
return

::#desc2::
temp := ClipboardAll
Sleep,100
clipboard = `/* DESCRIPTION`n * --------------------------------------------------------------------------------- */
Send ^v
Send {UP}
Send +{left 11}
Clipboard := temp
return
