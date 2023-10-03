
import * as $calcit from "./calcit.core.mjs";
import { _LT__GT_ } from "./app.core.mjs";
import { _LT__GT__LT__GT_ } from "./app.core.mjs";
import { BarCodeScanner } from "expo-barcode-scanner";
import { Button } from "react-native";
import { Modal } from "react-native";
import { Pressable } from "react-native";
import QRCode from "react-native-qrcode-svg";
import * as $React from "react";
import { StatusBar } from "expo-status-bar";
import { Text } from "react-native";
import { TextInput } from "react-native";
import { ToastAndroid } from "react-native";
import { View } from "react-native";
import { js_$L_ } from "./app.core.mjs";
import { launchImageLibraryAsync } from "expo-image-picker";
import { use_atom } from "./app.core.mjs";
var _tag={};
["%draft-plugin-actions","alignItems","allowEditing","animationType","backgroundColor","borderRadius","borderWidth","color","draft-plugin","flex","flexDirection","fontFamily","gap","get","height","hide","justifyContent","marginBottom","marginTop","onBarCodeScanned","onChangeText","onPress","onRequestClose","padding","paddingHorizontal","paddingLeft","paddingTop","placeholder","position","quality","render","right","row","show","size","style","title","top","transparent","value","visible","width",].forEach(x => {
  _tag[x] = $calcit.newTag(x);
});


let _calcit_args_mismatch = (name, expected, got) => {
  return new Error(`\`${name}\` expected ${expected} params, got ${got}`);
};

export function style_merge(...args) { 
if (arguments.length < 0) throw new Error('too few arguments');
args = $calcit.arrayToList(args);
return Object.assign($calcit._$n_js_object(), ...$calcit.listToArray(args))
}
export function comp_scan(_$s_show_scan, on_scan) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('comp-scan', 2, arguments.length);
return _LT__GT_(Modal, $calcit._$n_js_object(_tag["animationType"], "fade", _tag["transparent"], true, _tag["visible"], $calcit.deref(_$s_show_scan), _tag["onRequestClose"], function f_PCT_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('f%', 0, arguments.length);
return $calcit.invoke_method("set!",_$s_show_scan,false)
}
), _LT__GT_(BarCodeScanner, $calcit._$n_js_object(_tag["onBarCodeScanned"], function f_PCT_(info) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
console.log("Scaned", info);
$calcit.invoke_method("set!",_$s_show_scan,false);
return on_scan(info.data)
}
, _tag["style"], $calcit._$n_js_object(_tag["width"], "100%", _tag["height"], "100%", _tag["backgroundColor"], "hsla(0,0%,0%,0.7)"))), _LT__GT_(Pressable, $calcit._$n_js_object(_tag["style"], style_merge(style_press_button, style_close_position), _tag["onPress"], function f_PCT_(e) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
return $calcit.invoke_method("set!",_$s_show_scan,false)
}
), _LT__GT_(Text, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["color"], "#fff")), "Close")))
}
export function use_draft_plugin(on_submit) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('use-draft-plugin', 1, arguments.length);
let _$s_draft = use_atom("");
let _$s_show_$q_ = use_atom(false);
let node = _LT__GT_(Modal, $calcit._$n_js_object(_tag["visible"], $calcit.invoke_method("deref",_$s_show_$q_,), _tag["onRequestClose"], function f_PCT_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('f%', 0, arguments.length);
return $calcit.invoke_method("set!",_$s_show_$q_,false)
}
, _tag["animationType"], "fade", _tag["transparent"], true), _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["justifyContent"], "center", _tag["alignItems"], "center", _tag["flex"], 1, _tag["backgroundColor"], "hsla(0,0%,0%,0.6)")), _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["marginTop"], 8, _tag["flexDirection"], "column", _tag["gap"], 8, _tag["backgroundColor"], "#fff", _tag["borderWidth"], 1, _tag["padding"], 8, _tag["borderRadius"], 8)), _LT__GT_(TextInput, $calcit._$n_js_object(_tag["value"], $calcit.invoke_method("deref",_$s_draft,), _tag["style"], $calcit._$n_js_object(_tag["borderWidth"], 1, _tag["width"], 260, _tag["paddingHorizontal"], 8), _tag["placeholder"], "raw text", _tag["onChangeText"], function f_PCT_(t) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
return $calcit.invoke_method("set!",_$s_draft,t)
}
)), _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["flexDirection"], _tag["row"], _tag["justifyContent"], "space-between", _tag["gap"], 8))), _LT__GT_(View, $calcit._$n_js_object()), _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object()), _LT__GT_(Button, $calcit._$n_js_object(_tag["title"], "Submit", _tag["onPress"], function f_PCT_(e) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
on_submit($calcit.invoke_method("deref",_$s_draft,));
return $calcit.invoke_method("set!",_$s_show_$q_,false)
}
)))))));
return $calcit._PCT__$o__$o_(_PCT_draft_plugin_actions, _tag["draft-plugin"], node, _$s_draft, _$s_show_$q_)

}
export function comp_container(props, e) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('comp-container', 2, arguments.length);
let _$s_permission = use_atom(false);
let _$s_show_scan = use_atom(false);
let _$s_result = use_atom(null);
let draft_plugin = use_draft_plugin(function f_PCT_(content) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
return $calcit.invoke_method("set!",_$s_result,content)
}
);
$React.useEffect(function f_PCT_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('f%', 0, arguments.length);
let get_permissions = async function f_PCT_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('f%', 0, arguments.length);
let status = (await BarCodeScanner.requestPermissionsAsync());
return $calcit.invoke_method("set!",_$s_permission,$calcit._$e_(status.status, "granted"))

}
;
get_permissions();
return undefined

}
, js_$L_());
return _LT__GT__LT__GT_(_LT__GT_(StatusBar, $calcit._$n_js_object(_tag["style"], "light")), comp_scan(_$s_show_scan, function f_PCT_(content) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
let c = $calcit.invoke_method("trim",content,);
return $calcit.invoke_method("set!",_$s_result,c)

}
), ( $calcit.not($calcit.deref(_$s_show_scan)) ? _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["paddingTop"], 40, _tag["paddingLeft"], 20, _tag["backgroundColor"], "#eee", _tag["height"], "100%")), _LT__GT_(View, $calcit._$n_js_object(), _LT__GT_(Text, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["fontFamily"], "monospace", _tag["marginBottom"], 12)), $calcit.str("Scan result: ", JSON.stringify($calcit.deref(_$s_result))))), _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["flexDirection"], "row", _tag["gap"], 8)), ( $calcit.deref(_$s_permission) ? _LT__GT_(Button, $calcit._$n_js_object(_tag["title"], "Scan", _tag["onPress"], function f_PCT_(e) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
return $calcit.invoke_method("swap!",_$s_show_scan,$calcit.not)
}
)) : _LT__GT_(Text, $calcit._$n_js_object(), $calcit.str_spaced("No permission", $calcit.deref(_$s_permission))) ), _LT__GT_(Button, $calcit._$n_js_object(_tag["title"], "File", _tag["onPress"], async function f_PCT_(e) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
let result = (await launchImageLibraryAsync($calcit._$n_js_object(_tag["allowEditing"], true, _tag["quality"], 1)));

if (result.canceled) { return ToastAndroid.show("cancelled by user", ToastAndroid.SHORT) } else { let results = (await BarCodeScanner.scanFromURLAsync(result.assets["0"].uri));

if ($calcit._GT_(results.length, 0)) { return $calcit.invoke_method("set!",_$s_result,results["0"].data) } else { return  null; }
 }

}
)), _LT__GT_(Button, $calcit._$n_js_object(_tag["title"], "Text", _tag["onPress"], function f_PCT_(e) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
return $calcit.invoke_method("show",draft_plugin,)
}
))), (function __fn__(){
let content = $calcit.deref(_$s_result);

if ($calcit.some_$q_(content)) { 
if ($calcit.not($calcit.blank_$q_(content))) { return _LT__GT_(View, $calcit._$n_js_object(_tag["style"], $calcit._$n_js_object(_tag["marginTop"], 16)), _LT__GT_(QRCode, $calcit._$n_js_object(_tag["value"], content, _tag["size"], 320))) } else { return  null; } } else { return null }

})(), $calcit.invoke_method("render",draft_plugin,)) : null ))

}



export var _PCT_draft_plugin_actions = $calcit._$n__PCT__$M_($calcit.new_record(_tag["%draft-plugin-actions"], _tag["render"], _tag["show"], _tag["hide"], _tag["get"]), _tag["render"], function f_PCT_(self) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_1 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_1.data = null;
 throw err_AUTO_1;
})() : null );
let tag__1 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__1, _tag["draft-plugin"])) { let node = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_draft = $calcit._$n_tuple_$o_nth(self, 2);
let _$s_show_$q_ = $calcit._$n_tuple_$o_nth(self, 3);
return node
 } else { let err_AUTO_2 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_2.data = null;
 throw err_AUTO_2; }


}
, _tag["show"], function f_PCT_(self) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_3 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_3.data = null;
 throw err_AUTO_3;
})() : null );
let tag__2 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__2, _tag["draft-plugin"])) { let node = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_draft = $calcit._$n_tuple_$o_nth(self, 2);
let _$s_show_$q_ = $calcit._$n_tuple_$o_nth(self, 3);
return $calcit.invoke_method("set!",_$s_show_$q_,true)
 } else { let err_AUTO_4 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_4.data = null;
 throw err_AUTO_4; }


}
, _tag["hide"], function f_PCT_(self) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_5 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_5.data = null;
 throw err_AUTO_5;
})() : null );
let tag__3 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__3, _tag["draft-plugin"])) { let node = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_draft = $calcit._$n_tuple_$o_nth(self, 2);
let _$s_show_$q_ = $calcit._$n_tuple_$o_nth(self, 3);
return $calcit.invoke_method("set!",_$s_show_$q_,false)
 } else { let err_AUTO_6 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_6.data = null;
 throw err_AUTO_6; }


}
, _tag["get"], function f_PCT_(self) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_7 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_7.data = null;
 throw err_AUTO_7;
})() : null );
let tag__4 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__4, _tag["draft-plugin"])) { let node = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_draft = $calcit._$n_tuple_$o_nth(self, 2);
let _$s_show_$q_ = $calcit._$n_tuple_$o_nth(self, 3);
return $calcit.invoke_method("deref",_$s_draft,)
 } else { let err_AUTO_8 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_8.data = null;
 throw err_AUTO_8; }


}
);

export var style_close_position = $calcit._$n_js_object(_tag["position"], "absolute", _tag["top"], 40, _tag["right"], 20);

export var style_press_button = $calcit._$n_js_object(_tag["backgroundColor"], "#555", _tag["color"], "#fff", _tag["justifyContent"], "center", _tag["alignItems"], "center", _tag["width"], 80, _tag["height"], 40);

