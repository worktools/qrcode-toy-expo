
import * as $calcit from "./calcit.core.mjs";
import * as $React from "react";
var _tag={};
["%Atom","atom","deref","set!","swap!",].forEach(x => {
  _tag[x] = $calcit.newTag(x);
});


let _calcit_args_mismatch = (name, expected, got) => {
  return new Error(`\`${name}\` expected ${expected} params, got ${got}`);
};

export function _LT__GT__LT__GT_(...args) { 
if (arguments.length < 0) throw new Error('too few arguments');
args = $calcit.arrayToList(args);
return _LT__GT_($React.Fragment, null, ...$calcit.listToArray(args))
}
export function use_atom(v) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('use-atom', 1, arguments.length);
let _$s_s = $React.useState(v);
let _$s_r = $React.useRef(v);
return $calcit._PCT__$o__$o_(_PCT_Atom, _tag["atom"], _$s_s, _$s_r)

}



export var _PCT_Atom = $calcit._$n__PCT__$M_($calcit.new_record(_tag["%Atom"], _tag["deref"], _tag["set!"], _tag["swap!"]), _tag["deref"], function f_PCT_(self) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('f%', 1, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_1 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_1.data = null;
 throw err_AUTO_1;
})() : null );
let tag__1 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__1, _tag["atom"])) { let _$s_s = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_r = $calcit._$n_tuple_$o_nth(self, 2);
return _$s_r.current
 } else { let err_AUTO_2 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_2.data = null;
 throw err_AUTO_2; }


}
, _tag["set!"], function f_PCT_(self, v) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_3 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_3.data = null;
 throw err_AUTO_3;
})() : null );
let tag__2 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__2, _tag["atom"])) { let _$s_s = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_r = $calcit._$n_tuple_$o_nth(self, 2);
_$s_r.current = v;
return _$s_s["1"](v)

 } else { let err_AUTO_4 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_4.data = null;
 throw err_AUTO_4; }


}
, _tag["swap!"], function f_PCT_(self, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
( $calcit.not($calcit.tuple_$q_(self)) ? (function __fn__(){
let err_AUTO_5 = new Error($calcit.str("tag-match expected tuple, got", self));
 err_AUTO_5.data = null;
 throw err_AUTO_5;
})() : null );
let tag__3 = $calcit._$n_tuple_$o_nth(self, 0);

if ($calcit._$n__$e_(tag__3, _tag["atom"])) { let _$s_s = $calcit._$n_tuple_$o_nth(self, 1);
let _$s_r = $calcit._$n_tuple_$o_nth(self, 2);
let v = _$s_r.current;
let v_SQUO_ = f(v);
_$s_r.current = v_SQUO_;
return _$s_s["1"](v_SQUO_)
 } else { let err_AUTO_6 = new Error($calcit.str_spaced("tag-match found no matched case, missing `_` for", self));
 err_AUTO_6.data = null;
 throw err_AUTO_6; }


}
);

export var _LT__GT_ = $React.createElement;

export var js_$L_ = $calcit.js_array;

