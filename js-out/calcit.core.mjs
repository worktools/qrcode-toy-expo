
import {newTag, arrayToList, listToArray, CalcitSliceList, CalcitSymbol, CalcitRecur} from "@calcit/procs";
import * as $calcit_procs from "@calcit/procs";
export * from "@calcit/procs";

var _tag={};
["&core-fn-class","&core-list-class","&core-map-class","&core-nil-class","&core-number-class","&core-set-class","&core-string-class","add","any?","append","apply","assoc","assoc-after","assoc-before","bind","blank?","butlast","call","call-args","ceil","common-keys","concat","contains?","count","destruct","diff-keys","diff-new","difference","display-by","dissoc","drop","each","empty","empty?","ends-with?","escape","exclude","filter","filter-kv","filter-not","filter-pair","find","find-index","find-last","find-last-index","first","flatten","floor","foldl","format","fract","get","get-char-code","get-in","group-by","inc","include","includes?","index-of","intersection","join","join-str","keys","last-index-of","map","map-indexed","map-kv","map-list","map-pair","mappend","max","merge","min","negate","nth","pad-left","pad-right","pairs-map","parse-float","pow","prepend","reduce","rem","replace","rest","reverse","round","round?","slice","sort","sort-by","split","split-lines","sqrt","starts-with?","strip-prefix","strip-suffix","symbol","take","take-last","to-list","to-map","to-number","to-pairs","to-set","to-string","trim","union","values",].forEach(x => {
  _tag[x] = newTag(x);
});


let _calcit_args_mismatch = (name, expected, got) => {
  return new Error(`\`${name}\` expected ${expected} params, got ${got}`);
};

export function _$n__GT__$e_(a, b) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&>=', 2, arguments.length);

if ($calcit_procs._$n__GT_(a, b)) { return true } else { return $calcit_procs._$n__$e_(a, b) }
}
export function reduce(xs, x0, f) { 
if (arguments.length !== 3) throw _calcit_args_mismatch('reduce', 3, arguments.length);
return $calcit_procs.foldl(xs, x0, f)
}
export function _$n_list_$o_filter(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:filter', 2, arguments.length);
return reduce(xs, $calcit_procs._$L_(), function _PCT__$n_list_$o_filter(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&list:filter', 2, arguments.length);

if (f(x)) { return $calcit_procs.append(acc, x) } else { return acc }
}
)
}

var nil_$q_ = $calcit_procs.nil_$q_;
export function some_$q_(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('some?', 1, arguments.length);
return $calcit_procs.not(nil_$q_(x))
}
export function _$n_str_spaced(head_$q_, x0, ...xs) { 
if (arguments.length < 2) throw new Error('too few arguments');
xs = arrayToList(xs);

if ($calcit_procs._$n_list_$o_empty_$q_(xs)) { 
if (head_$q_) { return $calcit_procs._$n_str(x0) }
 else if (nil_$q_(x0)) { return "" } else { return $calcit_procs._$n_str_$o_concat(" ", x0) } }
 else if (some_$q_(x0)) { return $calcit_procs._$n_str_$o_concat(( head_$q_ ? $calcit_procs._$n_str(x0) : $calcit_procs._$n_str_$o_concat(" ", x0) ), _$n_str_spaced(false, ...listToArray(xs))) } else { return _$n_str_spaced(head_$q_, ...listToArray(xs)) }
}
export let foldl_compare = function foldl_compare(xs, acc, f) {
  
if (arguments.length !== 3) throw _calcit_args_mismatch('foldl-compare', 3, arguments.length);
  
  let times_AUTO_3 = 0;
  while(true) { /* Tail Recursion */
    let ret_AUTO_2 = null;
    if (times_AUTO_3 > 10000000) throw new Error('tail recursion not finished after 10M iterations');
    
if ($calcit_procs._$n_list_$o_empty_$q_(xs)) { ret_AUTO_2 =true }
 else if (f(acc, $calcit_procs._$n_list_$o_first(xs))) { ret_AUTO_2 =$calcit_procs.recur($calcit_procs._$n_list_$o_rest(xs), $calcit_procs._$n_list_$o_first(xs), f) } else { ret_AUTO_2 =false }

    if (ret_AUTO_2 instanceof CalcitRecur) {
      
if (ret_AUTO_2.args.length !== 3) throw _calcit_args_mismatch('foldl-compare', 3, ret_AUTO_2.args.length);
      [ xs, acc, f ] = ret_AUTO_2.args;
      
      times_AUTO_3 += 1;
      continue;
    } else {
      return ret_AUTO_2;
    }
  }
}

export function _$e_(x, ...ys) { 
if (arguments.length < 1) throw new Error('too few arguments');
ys = arrayToList(ys);

if ($calcit_procs._$n__$e_(1, $calcit_procs._$n_list_$o_count(ys))) { return $calcit_procs._$n__$e_(x, $calcit_procs._$n_list_$o_first(ys)) } else { return foldl_compare(ys, x, $calcit_procs._$n__$e_) }
}

var list_$q_ = $calcit_procs.list_$q_;

var record_$q_ = $calcit_procs.record_$q_;

var tuple_$q_ = $calcit_procs.tuple_$q_;
export function count(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('count', 1, arguments.length);

if (nil_$q_(x)) { return 0 }
 else if (tuple_$q_(x)) { return $calcit_procs._$n_tuple_$o_count(x) }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_count(x) }
 else if (record_$q_(x)) { return $calcit_procs._$n_record_$o_count(x) } else { return $calcit_procs.invoke_method("count",x,) }
}
export function nth(x, i) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('nth', 2, arguments.length);

if (tuple_$q_(x)) { return $calcit_procs._$n_tuple_$o_nth(x, i) }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_nth(x, i) } else { return $calcit_procs.invoke_method("nth",x,i) }
}
export function str_spaced(...xs) { 
if (arguments.length < 0) throw new Error('too few arguments');
xs = arrayToList(xs);
return _$n_str_spaced(true, ...listToArray(xs))
}

var string_$q_ = $calcit_procs.string_$q_;
export function _$n_list_$o_filter_pair(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:filter-pair', 2, arguments.length);

if (list_$q_(xs)) { return _$n_list_$o_filter(xs, function _PCT_filter_pair(pair) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%filter-pair', 1, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expected a pair")) ? (function __fn__(){
let err_AUTO_4 = new Error(str_spaced("expects 1st argument to be string, got:", "expected a pair"));
 err_AUTO_4.data = null;
 throw err_AUTO_4;
})() : null );

if (( list_$q_(pair) ? (function __fn__(){
let v1__14 = _$e_(2, count(pair));

if (v1__14) { return v1__14 } else { return false }

})() : false )) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("and"), new CalcitSliceList([new CalcitSymbol("list?"), new CalcitSymbol("pair")]), new CalcitSliceList([new CalcitSymbol("="), 2, new CalcitSliceList([new CalcitSymbol("count"), new CalcitSymbol("pair")])])]))));
let err_AUTO_5 = new Error("expected a pair (and (list? pair) (= 2 (count pair)))");
 err_AUTO_5.data = null;
 throw err_AUTO_5;
 }

})();
return f(nth(pair, 0), nth(pair, 1))
}
) } else { let err_AUTO_6 = new Error(str_spaced("expected list or map from `filter-pair`, got:", xs));
 err_AUTO_6.data = null;
 throw err_AUTO_6; }
}
export function _$n_list_$o_find_last(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:find-last', 2, arguments.length);
return $calcit_procs.foldr_shortcut(xs, null, null, function f_PCT_(_acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(true, x) } else { return $calcit_procs._$o__$o_(false, null) }
}
)
}
export function dec(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('dec', 1, arguments.length);
return $calcit_procs._$n__(x, 1)
}
export function _$n_list_$o_find_last_index(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:find-last-index', 2, arguments.length);
return $calcit_procs.foldr_shortcut(xs, dec(count(xs)), null, function f_PCT_(idx, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(true, idx) } else { return $calcit_procs._$o__$o_(false, $calcit_procs._$n__(1, idx)) }
}
)
}
export function _$n_list_$o_map(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:map', 2, arguments.length);
return $calcit_procs.foldl(xs, $calcit_procs._$L_(), function _PCT__$n_list_$o_map(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&list:map', 2, arguments.length);
return $calcit_procs.append(acc, f(x))
}
)
}
export function _$n_map_$o_map(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:map', 2, arguments.length);
return $calcit_procs.foldl(xs, $calcit_procs._$n__$M_(), function _$n_map_$o_map(acc, pair) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:map', 2, arguments.length);
let result = f(pair);
(function __fn__(){
( $calcit_procs.not(string_$q_("expected pair returned when mapping hashmap")) ? (function __fn__(){
let err_AUTO_7 = new Error(str_spaced("expects 1st argument to be string, got:", "expected pair returned when mapping hashmap"));
 err_AUTO_7.data = null;
 throw err_AUTO_7;
})() : null );

if (( list_$q_(result) ? (function __fn__(){
let v1__1 = $calcit_procs._$n__$e_(2, $calcit_procs._$n_list_$o_count(result));

if (v1__1) { return v1__1 } else { return false }

})() : false )) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("and"), new CalcitSliceList([new CalcitSymbol("list?"), new CalcitSymbol("result")]), new CalcitSliceList([new CalcitSymbol("&="), 2, new CalcitSliceList([new CalcitSymbol("&list:count"), new CalcitSymbol("result")])])]))));
let err_AUTO_8 = new Error("expected pair returned when mapping hashmap (and (list? result) (&= 2 (&list:count result)))");
 err_AUTO_8.data = null;
 throw err_AUTO_8;
 }

})();
return $calcit_procs._$n_map_$o_assoc(acc, nth(result, 0), nth(result, 1))

}
)
}
export function include(base, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, base, function f_PCT_(acc, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
return $calcit_procs._$n_include(acc, item)
}
)
}

var map_$q_ = $calcit_procs.map_$q_;

var set_$q_ = $calcit_procs.set_$q_;
export function map(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('map', 2, arguments.length);

if (list_$q_(xs)) { return _$n_list_$o_map(xs, f) }
 else if (set_$q_(xs)) { return $calcit_procs.foldl(xs, $calcit_procs._SHA__$M_(), function _PCT_map(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%map', 2, arguments.length);
return include(acc, f(x))
}
) }
 else if (map_$q_(xs)) { return _$n_map_$o_map(xs, f) } else { let err_AUTO_9 = new Error(str_spaced("expected list or set for map function, got:", xs));
 err_AUTO_9.data = null;
 throw err_AUTO_9; }
}
export function _$n_list_$o_flatten(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&list:flatten', 1, arguments.length);

if (list_$q_(xs)) { return $calcit_procs._$n_list_$o_concat(...listToArray(map(xs, _$n_list_$o_flatten))) } else { return $calcit_procs._$L_(xs) }
}
export function _$n_list_$o_last_index_of(xs, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:last-index-of', 2, arguments.length);
return $calcit_procs.foldr_shortcut(xs, dec(count(xs)), null, function f_PCT_(idx, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);

if ($calcit_procs._$n__$e_(item, x)) { return $calcit_procs._$o__$o_(true, idx) } else { return $calcit_procs._$o__$o_(false, $calcit_procs._$n__(1, idx)) }
}
)
}
export function _$n_list_$o_map_pair(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:map-pair', 2, arguments.length);

if (list_$q_(xs)) { return map(xs, function _PCT_map_pair(pair) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%map-pair', 1, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expected a pair")) ? (function __fn__(){
let err_AUTO_10 = new Error(str_spaced("expects 1st argument to be string, got:", "expected a pair"));
 err_AUTO_10.data = null;
 throw err_AUTO_10;
})() : null );

if (( list_$q_(pair) ? (function __fn__(){
let v1__13 = _$e_(2, count(pair));

if (v1__13) { return v1__13 } else { return false }

})() : false )) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("and"), new CalcitSliceList([new CalcitSymbol("list?"), new CalcitSymbol("pair")]), new CalcitSliceList([new CalcitSymbol("="), 2, new CalcitSliceList([new CalcitSymbol("count"), new CalcitSymbol("pair")])])]))));
let err_AUTO_11 = new Error("expected a pair (and (list? pair) (= 2 (count pair)))");
 err_AUTO_11.data = null;
 throw err_AUTO_11;
 }

})();
return f(nth(pair, 0), nth(pair, 1))
}
) } else { let err_AUTO_12 = new Error(str_spaced("expected list or map from `map-pair`, got:", xs));
 err_AUTO_12.data = null;
 throw err_AUTO_12; }
}

var number_$q_ = $calcit_procs.number_$q_;
export function _$n_max(a, b) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&max', 2, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expects numbers for &max")) ? (function __fn__(){
let err_AUTO_13 = new Error(str_spaced("expects 1st argument to be string, got:", "expects numbers for &max"));
 err_AUTO_13.data = null;
 throw err_AUTO_13;
})() : null );

if ((function __fn__(){

if (number_$q_(a)) { return number_$q_(b) }
 else if (string_$q_(a)) { return string_$q_(b) } else { return false }
})()) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("if"), new CalcitSliceList([new CalcitSymbol("number?"), new CalcitSymbol("a")]), new CalcitSliceList([new CalcitSymbol("number?"), new CalcitSymbol("b")]), new CalcitSliceList([new CalcitSymbol("if"), new CalcitSliceList([new CalcitSymbol("string?"), new CalcitSymbol("a")]), new CalcitSliceList([new CalcitSymbol("string?"), new CalcitSymbol("b")]), false])]))));
let err_AUTO_14 = new Error("expects numbers for &max (if (number? a) (number? b) (if (string? a) (string? b) false))");
 err_AUTO_14.data = null;
 throw err_AUTO_14;
 }

})();

if ($calcit_procs._$n__GT_(a, b)) { return a } else { return b }
}
export function empty_$q_(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('empty?', 1, arguments.length);

if (nil_$q_(x)) { return true }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_empty_$q_(x) } else { return $calcit_procs.invoke_method("empty?",x,) }
}
export function _$n_list_$o_max(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&list:max', 1, arguments.length);
let v__11 = xs;
( $calcit_procs.not(list_$q_(v__11)) ? (function __fn__(){
let err_AUTO_15 = new Error("expected a list in list-match");
 err_AUTO_15.data = null;
 throw err_AUTO_15;
})() : null );

if (empty_$q_(v__11)) { return null
 } else { let x0 = $calcit_procs._$n_list_$o_nth(v__11, 0);
let xss = $calcit_procs._$n_list_$o_slice(v__11, 1);
return reduce(xss, x0, function _PCT_max(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%max', 2, arguments.length);
return _$n_max(acc, x)
}
)

 }

}
export function _$n_min(a, b) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&min', 2, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expects numbers for &min")) ? (function __fn__(){
let err_AUTO_16 = new Error(str_spaced("expects 1st argument to be string, got:", "expects numbers for &min"));
 err_AUTO_16.data = null;
 throw err_AUTO_16;
})() : null );

if ((function __fn__(){

if (number_$q_(a)) { return number_$q_(b) }
 else if (string_$q_(a)) { return string_$q_(b) } else { return false }
})()) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("if"), new CalcitSliceList([new CalcitSymbol("number?"), new CalcitSymbol("a")]), new CalcitSliceList([new CalcitSymbol("number?"), new CalcitSymbol("b")]), new CalcitSliceList([new CalcitSymbol("if"), new CalcitSliceList([new CalcitSymbol("string?"), new CalcitSymbol("a")]), new CalcitSliceList([new CalcitSymbol("string?"), new CalcitSymbol("b")]), false])]))));
let err_AUTO_17 = new Error("expects numbers for &min (if (number? a) (number? b) (if (string? a) (string? b) false))");
 err_AUTO_17.data = null;
 throw err_AUTO_17;
 }

})();

if ($calcit_procs._$n__LT_(a, b)) { return a } else { return b }
}
export function _$n_list_$o_min(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&list:min', 1, arguments.length);
let v__12 = xs;
( $calcit_procs.not(list_$q_(v__12)) ? (function __fn__(){
let err_AUTO_18 = new Error("expected a list in list-match");
 err_AUTO_18.data = null;
 throw err_AUTO_18;
})() : null );

if (empty_$q_(v__12)) { return null
 } else { let x0 = $calcit_procs._$n_list_$o_nth(v__12, 0);
let xss = $calcit_procs._$n_list_$o_slice(v__12, 1);
return reduce(xss, x0, function _PCT_min(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%min', 2, arguments.length);
return _$n_min(acc, x)
}
)

 }

}
export function get(base, k) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('get', 2, arguments.length);

if (nil_$q_(base)) { return null }
 else if (string_$q_(base)) { return $calcit_procs._$n_str_$o_nth(base, k) }
 else if (map_$q_(base)) { return $calcit_procs._$n_map_$o_get(base, k) }
 else if (list_$q_(base)) { return $calcit_procs._$n_list_$o_nth(base, k) }
 else if (tuple_$q_(base)) { return $calcit_procs._$n_tuple_$o_nth(base, k) }
 else if (record_$q_(base)) { return $calcit_procs._$n_record_$o_get(base, k) } else { let err_AUTO_19 = new Error(str_spaced("Expected map or list for get, got:", base, k));
 err_AUTO_19.data = null;
 throw err_AUTO_19; }
}

var tag_$q_ = $calcit_procs.tag_$q_;
export function _$n_list_$o_sort_by(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:sort-by', 2, arguments.length);

if (tag_$q_(f)) { return $calcit_procs.sort(xs, function _PCT__$n_list_$o_sort_by(a, b) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&list:sort-by', 2, arguments.length);
return $calcit_procs._$n_compare(get(a, f), get(b, f))
}
) } else { return $calcit_procs.sort(xs, function _PCT__$n_list_$o_sort_by(a, b) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&list:sort-by', 2, arguments.length);
return $calcit_procs._$n_compare(f(a), f(b))
}
) }
}
export function _SUB_(x, ...ys) { 
if (arguments.length < 1) throw new Error('too few arguments');
ys = arrayToList(ys);

if ($calcit_procs._$n_list_$o_empty_$q_(ys)) { return $calcit_procs._$n__(0, x) } else { return reduce(ys, x, $calcit_procs._$n__) }
}
export function _GT__$e_(x, ...ys) { 
if (arguments.length < 1) throw new Error('too few arguments');
ys = arrayToList(ys);

if ($calcit_procs._$n__$e_(1, $calcit_procs._$n_list_$o_count(ys))) { return _$n__GT__$e_(x, $calcit_procs._$n_list_$o_first(ys)) } else { return foldl_compare(ys, x, _$n__GT__$e_) }
}
export function any_$q_(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('any?', 2, arguments.length);
return $calcit_procs.foldl_shortcut(xs, false, false, function _PCT_any_$q_(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%any?', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(true, true) } else { return $calcit_procs._$o__$o_(false, acc) }
}
)
}
export function assoc(x, ...args) { 
if (arguments.length < 1) throw new Error('too few arguments');
args = arrayToList(args);

if (nil_$q_(x)) { let err_AUTO_20 = new Error(str_spaced("assoc does not work on nil for:", args));
 err_AUTO_20.data = null;
 throw err_AUTO_20; }
 else if (tuple_$q_(x)) { return $calcit_procs._$n_tuple_$o_assoc(x, ...listToArray(args)) }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_assoc(x, ...listToArray(args)) }
 else if (record_$q_(x)) { return $calcit_procs._$n_record_$o_assoc(x, ...listToArray(args)) } else { return $calcit_procs.invoke_method("assoc",x,...listToArray(args)) }
}
export function contains_$q_(x, k) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('contains?', 2, arguments.length);

if (nil_$q_(x)) { return false }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_contains_$q_(x, k) }
 else if (record_$q_(x)) { return $calcit_procs._$n_record_$o_contains_$q_(x, k) }
 else if (tuple_$q_(x)) { 
if (_$n__GT__$e_(k, 0)) { let v1__8 = $calcit_procs._$n__LT_(k, $calcit_procs._$n_tuple_$o_count(x));

if (v1__8) { return v1__8 } else { return false }
 } else { return false } } else { return $calcit_procs.invoke_method("contains?",x,k) }
}
export function slice(xs, n, m) { 
if (arguments.length < 2) throw new Error('too few arguments');
if (arguments.length > 3) throw new Error('too many arguments');

if (nil_$q_(xs)) { return null } else { return $calcit_procs.invoke_method("slice",xs,n, m) }
}
export function drop(xs, n) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('drop', 2, arguments.length);
return slice(xs, n, $calcit_procs._$n_list_$o_count(xs))
}
export function each(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('each', 2, arguments.length);
return $calcit_procs.foldl(xs, null, function _PCT_each(_acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%each', 2, arguments.length);
return f(x)
}
)
}
export function filter_not(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('filter-not', 2, arguments.length);
return $calcit_procs.invoke_method("filter",xs,function _PCT_filter_not(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%filter-not', 1, arguments.length);
return $calcit_procs.not(f(x))
}
)
}
export function find(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('find', 2, arguments.length);
return $calcit_procs.foldl_shortcut(xs, 0, null, function _PCT_find(_acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%find', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(true, x) } else { return $calcit_procs._$o__$o_(false, null) }
}
)
}
export function find_index(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('find-index', 2, arguments.length);
return $calcit_procs.foldl_shortcut(xs, 0, null, function _PCT_find_index(idx, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%find-index', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(true, idx) } else { return $calcit_procs._$o__$o_(false, $calcit_procs._$n__ADD_(1, idx)) }
}
)
}
export let get_in = function get_in(base, path) {
  
if (arguments.length !== 2) throw _calcit_args_mismatch('get-in', 2, arguments.length);
  
  let times_AUTO_25 = 0;
  while(true) { /* Tail Recursion */
    let ret_AUTO_24 = null;
    if (times_AUTO_25 > 10000000) throw new Error('tail recursion not finished after 10M iterations');
    ( $calcit_procs.not(list_$q_(path)) ? (function __fn__(){
let err_AUTO_22 = new Error(str_spaced("expects path in a list, got:", path));
 err_AUTO_22.data = null;
 throw err_AUTO_22;
})() : null );

if (nil_$q_(base)) { ret_AUTO_24 =null } else { let v__5 = path;
( $calcit_procs.not(list_$q_(v__5)) ? (function __fn__(){
let err_AUTO_23 = new Error("expected a list in list-match");
 err_AUTO_23.data = null;
 throw err_AUTO_23;
})() : null );

if (empty_$q_(v__5)) { ret_AUTO_24 =base
 } else { let y0 = $calcit_procs._$n_list_$o_nth(v__5, 0);
let ys = $calcit_procs._$n_list_$o_slice(v__5, 1);
ret_AUTO_24 =$calcit_procs.recur(get(base, y0), ys)

 }
 }

    if (ret_AUTO_24 instanceof CalcitRecur) {
      
if (ret_AUTO_24.args.length !== 2) throw _calcit_args_mismatch('get-in', 2, ret_AUTO_24.args.length);
      [ base, path ] = ret_AUTO_24.args;
      
      times_AUTO_25 += 1;
      continue;
    } else {
      return ret_AUTO_24;
    }
  }
}

export function update(x, k, f) { 
if (arguments.length !== 3) throw _calcit_args_mismatch('update', 3, arguments.length);

if (map_$q_(x)) { 
if (contains_$q_(x, k)) { return assoc(x, k, f($calcit_procs._$n_map_$o_get(x, k))) } else { return x } }
 else if (list_$q_(x)) { 
if ($calcit_procs._$n_list_$o_contains_$q_(x, k)) { return assoc(x, k, f($calcit_procs._$n_list_$o_nth(x, k))) } else { return x } }
 else if (tuple_$q_(x)) { return assoc(x, k, f($calcit_procs._$n_tuple_$o_nth(x, k))) }
 else if (record_$q_(x)) { 
if (contains_$q_(x, k)) { return assoc(x, k, f($calcit_procs._$n_record_$o_get(x, k))) } else { return x } } else { let err_AUTO_26 = new Error($calcit_procs._$n_str_$o_concat("Cannot update key on item: ", $calcit_procs.to_lispy_string(x)));
 err_AUTO_26.data = null;
 throw err_AUTO_26; }
}
export function group_by(xs0, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('group-by', 2, arguments.length);
return function _PCT_group_by(acc, xs) {
  
if (arguments.length !== 2) throw _calcit_args_mismatch('%group-by', 2, arguments.length);
  
  let times_AUTO_30 = 0;
  while(true) { /* Tail Recursion */
    let ret_AUTO_29 = null;
    if (times_AUTO_30 > 10000000) throw new Error('tail recursion not finished after 10M iterations');
    let v__6 = xs;
( $calcit_procs.not(list_$q_(v__6)) ? (function __fn__(){
let err_AUTO_28 = new Error("expected a list in list-match");
 err_AUTO_28.data = null;
 throw err_AUTO_28;
})() : null );

if (empty_$q_(v__6)) { ret_AUTO_29 =acc
 } else { let x0 = $calcit_procs._$n_list_$o_nth(v__6, 0);
let xss = $calcit_procs._$n_list_$o_slice(v__6, 1);
let key = f(x0);
ret_AUTO_29 =$calcit_procs.recur(( contains_$q_(acc, key) ? update(acc, key, function _PCT__BSL_(_PCT_, _PCT_2) { 
if (arguments.length < 0) throw new Error('too few arguments');
if (arguments.length > 2) throw new Error('too many arguments');
return $calcit_procs.append(_PCT_, x0)
}
) : $calcit_procs._$n_map_$o_assoc(acc, key, $calcit_procs._$L_(x0)) ), xss)


 }


    if (ret_AUTO_29 instanceof CalcitRecur) {
      
if (ret_AUTO_29.args.length !== 2) throw _calcit_args_mismatch('%group-by', 2, ret_AUTO_29.args.length);
      [ acc, xs ] = ret_AUTO_29.args;
      
      times_AUTO_30 += 1;
      continue;
    } else {
      return ret_AUTO_29;
    }
  }
}

($calcit_procs._$n__$M_(), xs0)
}
export function identity(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('identity', 1, arguments.length);
return x
}
export function index_of(xs, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('index-of', 2, arguments.length);
return $calcit_procs.foldl_shortcut(xs, 0, null, function _PCT_index_of(idx, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%index-of', 2, arguments.length);

if ($calcit_procs._$n__$e_(item, x)) { return $calcit_procs._$o__$o_(true, idx) } else { return $calcit_procs._$o__$o_(false, $calcit_procs._$n__ADD_(1, idx)) }
}
)
}
export function join(xs0, sep) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('join', 2, arguments.length);
return function _PCT_join(acc, xs, beginning_$q_) {
  
if (arguments.length !== 3) throw _calcit_args_mismatch('%join', 3, arguments.length);
  
  let times_AUTO_34 = 0;
  while(true) { /* Tail Recursion */
    let ret_AUTO_33 = null;
    if (times_AUTO_34 > 10000000) throw new Error('tail recursion not finished after 10M iterations');
    let v__9 = xs;
( $calcit_procs.not(list_$q_(v__9)) ? (function __fn__(){
let err_AUTO_32 = new Error("expected a list in list-match");
 err_AUTO_32.data = null;
 throw err_AUTO_32;
})() : null );

if (empty_$q_(v__9)) { ret_AUTO_33 =acc
 } else { let x0 = $calcit_procs._$n_list_$o_nth(v__9, 0);
let xss = $calcit_procs._$n_list_$o_slice(v__9, 1);
ret_AUTO_33 =$calcit_procs.recur($calcit_procs.append(( beginning_$q_ ? acc : $calcit_procs.append(acc, sep) ), x0), xss, false)

 }


    if (ret_AUTO_33 instanceof CalcitRecur) {
      
if (ret_AUTO_33.args.length !== 3) throw _calcit_args_mismatch('%join', 3, ret_AUTO_33.args.length);
      [ acc, xs, beginning_$q_ ] = ret_AUTO_33.args;
      
      times_AUTO_34 += 1;
      continue;
    } else {
      return ret_AUTO_33;
    }
  }
}

($calcit_procs._$L_(), xs0, true)
}
export function join_str(xs0, sep) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('join-str', 2, arguments.length);
return function _PCT_join_str(acc, xs, beginning_$q_) {
  
if (arguments.length !== 3) throw _calcit_args_mismatch('%join-str', 3, arguments.length);
  
  let times_AUTO_38 = 0;
  while(true) { /* Tail Recursion */
    let ret_AUTO_37 = null;
    if (times_AUTO_38 > 10000000) throw new Error('tail recursion not finished after 10M iterations');
    let v__10 = xs;
( $calcit_procs.not(list_$q_(v__10)) ? (function __fn__(){
let err_AUTO_36 = new Error("expected a list in list-match");
 err_AUTO_36.data = null;
 throw err_AUTO_36;
})() : null );

if (empty_$q_(v__10)) { ret_AUTO_37 =acc
 } else { let x0 = $calcit_procs._$n_list_$o_nth(v__10, 0);
let xss = $calcit_procs._$n_list_$o_slice(v__10, 1);
ret_AUTO_37 =$calcit_procs.recur($calcit_procs._$n_str_$o_concat(( beginning_$q_ ? acc : $calcit_procs._$n_str_$o_concat(acc, sep) ), x0), xss, false)

 }


    if (ret_AUTO_37 instanceof CalcitRecur) {
      
if (ret_AUTO_37.args.length !== 3) throw _calcit_args_mismatch('%join-str', 3, ret_AUTO_37.args.length);
      [ acc, xs, beginning_$q_ ] = ret_AUTO_37.args;
      
      times_AUTO_38 += 1;
      continue;
    } else {
      return ret_AUTO_37;
    }
  }
}

("", xs0, true)
}
export function last(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('last', 1, arguments.length);

if (empty_$q_(xs)) { return null } else { return nth(xs, $calcit_procs._$n__(count(xs), 1)) }
}
export function map_indexed(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('map-indexed', 2, arguments.length);
return $calcit_procs.foldl(xs, $calcit_procs._$L_(), function _PCT_map_indexed(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%map-indexed', 2, arguments.length);
return $calcit_procs.append(acc, f(count(acc), x))
}
)
}
export function mapcat(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('mapcat', 2, arguments.length);
return $calcit_procs._$n_list_$o_concat(...listToArray(map(xs, f)))
}
export function pairs_map(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('pairs-map', 1, arguments.length);
return reduce(xs, $calcit_procs._$n__$M_(), function _PCT_pairs_map(acc, pair) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%pairs-map', 2, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expects pair for pairs-map")) ? (function __fn__(){
let err_AUTO_39 = new Error(str_spaced("expects 1st argument to be string, got:", "expects pair for pairs-map"));
 err_AUTO_39.data = null;
 throw err_AUTO_39;
})() : null );

if (( list_$q_(pair) ? $calcit_procs._$n__$e_(2, $calcit_procs._$n_list_$o_count(pair)) : false )) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("if"), new CalcitSliceList([new CalcitSymbol("list?"), new CalcitSymbol("pair")]), new CalcitSliceList([new CalcitSymbol("&="), 2, new CalcitSliceList([new CalcitSymbol("&list:count"), new CalcitSymbol("pair")])]), false]))));
let err_AUTO_40 = new Error("expects pair for pairs-map (if (list? pair) (&= 2 (&list:count pair)) false)");
 err_AUTO_40.data = null;
 throw err_AUTO_40;
 }

})();
return $calcit_procs._$n_map_$o_assoc(acc, $calcit_procs._$n_list_$o_first(pair), last(pair))
}
)
}
export function take(xs, n) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('take', 2, arguments.length);

if (_GT__$e_(n, $calcit_procs._$n_list_$o_count(xs))) { return xs } else { return slice(xs, 0, n) }
}
export function take_last(xs, n) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('take-last', 2, arguments.length);

if (_GT__$e_(n, $calcit_procs._$n_list_$o_count(xs))) { return xs } else { return slice(xs, _SUB_($calcit_procs._$n_list_$o_count(xs), n), $calcit_procs._$n_list_$o_count(xs)) }
}
export function _$n_map_$o_add_entry(xs, pair) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:add-entry', 2, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("&map:add-entry expected value in a pair")) ? (function __fn__(){
let err_AUTO_41 = new Error(str_spaced("expects 1st argument to be string, got:", "&map:add-entry expected value in a pair"));
 err_AUTO_41.data = null;
 throw err_AUTO_41;
})() : null );

if (( list_$q_(pair) ? (function __fn__(){
let v1__15 = $calcit_procs._$n__$e_(2, count(pair));

if (v1__15) { return v1__15 } else { return false }

})() : false )) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("and"), new CalcitSliceList([new CalcitSymbol("list?"), new CalcitSymbol("pair")]), new CalcitSliceList([new CalcitSymbol("&="), 2, new CalcitSliceList([new CalcitSymbol("count"), new CalcitSymbol("pair")])])]))));
let err_AUTO_42 = new Error("&map:add-entry expected value in a pair (and (list? pair) (&= 2 (count pair)))");
 err_AUTO_42.data = null;
 throw err_AUTO_42;
 }

})();
return $calcit_procs._$n_map_$o_assoc(xs, nth(pair, 0), nth(pair, 1))
}
export function _$n_map_$o_filter(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:filter', 2, arguments.length);
return reduce(xs, $calcit_procs._$n__$M_(), function _PCT__$n_map_$o_filter(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&map:filter', 2, arguments.length);

if (f(x)) { return $calcit_procs._$n_map_$o_assoc(acc, nth(x, 0), nth(x, 1)) } else { return acc }
}
)
}
export function _$n_map_$o_filter_kv(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:filter-kv', 2, arguments.length);
return reduce(xs, $calcit_procs._$n__$M_(), function _PCT_map_$o_filter_kv(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%map:filter-kv', 2, arguments.length);

if (f(nth(x, 0), nth(x, 1))) { return $calcit_procs._$n_map_$o_assoc(acc, nth(x, 0), nth(x, 1)) } else { return acc }
}
)
}
export function _$n_map_$o_map_list(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&map:map-list', 2, arguments.length);

if (map_$q_(xs)) { return $calcit_procs.foldl(xs, $calcit_procs._$L_(), function _PCT__$n_map_$o_map_list(acc, pair) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&map:map-list', 2, arguments.length);
return $calcit_procs.append(acc, f(pair))
}
) } else { let err_AUTO_43 = new Error(str_spaced("&map:map-list expected a map, got:", xs));
 err_AUTO_43.data = null;
 throw err_AUTO_43; }
}
export function keys(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('keys', 1, arguments.length);
return map($calcit_procs.to_pairs(x), $calcit_procs._$n_list_$o_first)
}
export function map_kv(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('map-kv', 2, arguments.length);
(function __fn__(){
( $calcit_procs.not(string_$q_("expects a map")) ? (function __fn__(){
let err_AUTO_44 = new Error(str_spaced("expects 1st argument to be string, got:", "expects a map"));
 err_AUTO_44.data = null;
 throw err_AUTO_44;
})() : null );

if (map_$q_(xs)) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("map?"), new CalcitSymbol("xs")]))));
let err_AUTO_45 = new Error("expects a map (map? xs)");
 err_AUTO_45.data = null;
 throw err_AUTO_45;
 }

})();
return $calcit_procs.foldl(xs, $calcit_procs._$n__$M_(), function _PCT_map_kv(acc, pair) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%map-kv', 2, arguments.length);
let result = f(nth(pair, 0), nth(pair, 1));

if (list_$q_(result)) { (function __fn__(){
( $calcit_procs.not(string_$q_("expected pair returned when mapping hashmap")) ? (function __fn__(){
let err_AUTO_46 = new Error(str_spaced("expects 1st argument to be string, got:", "expected pair returned when mapping hashmap"));
 err_AUTO_46.data = null;
 throw err_AUTO_46;
})() : null );

if ($calcit_procs._$n__$e_(2, $calcit_procs._$n_list_$o_count(result))) { return null } else { console.error($calcit_procs.printable("Failed assertion:", $calcit_procs.format_to_lisp(new CalcitSliceList([new CalcitSymbol("&="), 2, new CalcitSliceList([new CalcitSymbol("&list:count"), new CalcitSymbol("result")])]))));
let err_AUTO_47 = new Error("expected pair returned when mapping hashmap (&= 2 (&list:count result))");
 err_AUTO_47.data = null;
 throw err_AUTO_47;
 }

})();
return $calcit_procs._$n_map_$o_assoc(acc, nth(result, 0), nth(result, 1))
 }
 else if ((function __fn__(){
let v1__16 = nil_$q_(result);

if (nil_$q_(v1__16)) { return tuple_$q_(result) }
 else if (_$e_(false, v1__16)) { return tuple_$q_(result) } else { return v1__16 }

})()) { return acc } else { let err_AUTO_48 = new Error(str_spaced("map-kv expected list or nil, got:", result));
 err_AUTO_48.data = null;
 throw err_AUTO_48; }

}
)
}
export function merge(x0, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, x0, $calcit_procs._$n_merge)
}
export function vals(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('vals', 1, arguments.length);
return map($calcit_procs.to_pairs(x), last)
}
export function inc(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('inc', 1, arguments.length);
return $calcit_procs._$n__ADD_(x, 1)
}
export function negate(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('negate', 1, arguments.length);
return $calcit_procs._$n__(0, x)
}
export function _$n_set_$o_filter(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&set:filter', 2, arguments.length);
return reduce(xs, $calcit_procs._SHA__$M_(), function _PCT__$n_set_$o_filter(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%&set:filter', 2, arguments.length);

if (f(x)) { return $calcit_procs._$n_include(acc, x) } else { return acc }
}
)
}
export function _$n_set_$o_max(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&set:max', 1, arguments.length);
let pair = $calcit_procs._$n_set_$o_destruct(xs);

if (nil_$q_(pair)) { return null } else { return reduce(nth(pair, 1), nth(pair, 0), function _PCT_max(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%max', 2, arguments.length);
return _$n_max(acc, x)
}
) }

}
export function _$n_set_$o_min(xs) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&set:min', 1, arguments.length);
let pair = $calcit_procs._$n_set_$o_destruct(xs);

if (nil_$q_(pair)) { return null } else { return reduce(nth(pair, 1), nth(pair, 0), function _PCT_min(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%min', 2, arguments.length);
return _$n_min(acc, x)
}
) }

}
export function difference(base, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, base, function f_PCT_(acc, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
return $calcit_procs._$n_difference(acc, item)
}
)
}
export function exclude(base, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, base, function f_PCT_(acc, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
return $calcit_procs._$n_exclude(acc, item)
}
)
}
export function intersection(base, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, base, function f_PCT_(acc, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
return $calcit_procs._$n_set_$o_intersection(acc, item)
}
)
}
export function union(base, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);
return reduce(xs, base, function f_PCT_(acc, item) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('f%', 2, arguments.length);
return $calcit_procs._$n_union(acc, item)
}
)
}
export function strip_prefix(s, piece) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('strip-prefix', 2, arguments.length);

if ($calcit_procs.starts_with_$q_(s, piece)) { return $calcit_procs._$n_str_$o_slice(s, $calcit_procs._$n_str_$o_count(piece)) } else { return s }
}
export function strip_suffix(s, piece) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('strip-suffix', 2, arguments.length);

if ($calcit_procs.ends_with_$q_(s, piece)) { return $calcit_procs._$n_str_$o_slice(s, 0, $calcit_procs._$n__($calcit_procs._$n_str_$o_count(s), $calcit_procs._$n_str_$o_count(piece))) } else { return s }
}
export function _$n_init_builtin_classes_$x_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('&init-builtin-classes!', 0, arguments.length);
identity(_$n_core_number_class);
identity(_$n_core_string_class);
identity(_$n_core_set_class);
identity(_$n_core_list_class);
identity(_$n_core_map_class);
identity(_$n_core_nil_class);
return identity(_$n_core_fn_class)
}
export function _GT_(x, ...ys) { 
if (arguments.length < 1) throw new Error('too few arguments');
ys = arrayToList(ys);

if ($calcit_procs._$n__$e_(1, $calcit_procs._$n_list_$o_count(ys))) { return $calcit_procs._$n__GT_(x, $calcit_procs._$n_list_$o_first(ys)) } else { return foldl_compare(ys, x, $calcit_procs._$n__GT_) }
}

var ref_$q_ = $calcit_procs.ref_$q_;
export function deref(_$s_a) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('deref', 1, arguments.length);

if (ref_$q_(_$s_a)) { return $calcit_procs._$n_atom_$o_deref(_$s_a) } else { return $calcit_procs.invoke_method("deref",_$s_a,) }
}
export function every_$q_(xs, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('every?', 2, arguments.length);
return $calcit_procs.foldl_shortcut(xs, true, true, function _PCT_every_$q_(acc, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('%every?', 2, arguments.length);

if (f(x)) { return $calcit_procs._$o__$o_(false, acc) } else { return $calcit_procs._$o__$o_(true, false) }
}
)
}
export function first(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('first', 1, arguments.length);

if (nil_$q_(x)) { return null }
 else if (tuple_$q_(x)) { return $calcit_procs._$n_tuple_$o_nth(x, 0) }
 else if (list_$q_(x)) { return $calcit_procs._$n_list_$o_nth(x, 0) } else { return $calcit_procs.invoke_method("first",x,) }
}
export function str(x0, ...xs) { 
if (arguments.length < 1) throw new Error('too few arguments');
xs = arrayToList(xs);

if ($calcit_procs._$n_list_$o_empty_$q_(xs)) { return $calcit_procs._$n_str(x0) } else { return $calcit_procs._$n_str_$o_concat(x0, str(...listToArray(xs))) }
}
export function symbol_$q_(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('symbol?', 1, arguments.length);
return $calcit_procs._$n__$e_($calcit_procs.type_of(x), _tag["symbol"])
}



export var _$n_core_fn_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-fn-class"], _tag["call"], _tag["call-args"], _tag["map"], _tag["bind"], _tag["mappend"], _tag["apply"]), _tag["call"], function _$n_fn_$o_call(f, ...args) { 
if (arguments.length < 1) throw new Error('too few arguments');
args = arrayToList(args);
return f(...listToArray(args))
}
, _tag["call-args"], function _$n_fn_$o_call_args(f, args) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:call-args', 2, arguments.length);
return f(...listToArray(args))
}
, _tag["map"], function _$n_fn_$o_map(f, g) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:map', 2, arguments.length);
return function _$n_fn_$o_map(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&fn:map', 1, arguments.length);
return f(g(x))
}

}
, _tag["bind"], function _$n_fn_$o_bind(m, f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:bind', 2, arguments.length);
return function _PCT__$n_fn_$o_bind(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%&fn:bind', 1, arguments.length);
return f(m(x), x)
}

}
, _tag["mappend"], function _$n_fn_$o_mappend(f, g) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:mappend', 2, arguments.length);
return function _PCT__$n_fn_$o_mappend(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%&fn:mappend', 1, arguments.length);
return $calcit_procs.invoke_method("mappend",f(x),g(x))
}

}
, _tag["apply"], function _$n_fn_$o_apply(f, g) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:apply', 2, arguments.length);
return function _PCT__$s_fn_$o_apply(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('%*fn:apply', 1, arguments.length);
return g(x, f(x))
}

}
);

export var _$n_core_list_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-list-class"], _tag["any?"], _tag["add"], _tag["append"], _tag["assoc"], _tag["assoc-after"], _tag["assoc-before"], _tag["bind"], _tag["butlast"], _tag["concat"], _tag["contains?"], _tag["includes?"], _tag["count"], _tag["drop"], _tag["each"], _tag["empty"], _tag["empty?"], _tag["filter"], _tag["filter-not"], _tag["find"], _tag["find-index"], _tag["find-last"], _tag["find-last-index"], _tag["foldl"], _tag["get"], _tag["get-in"], _tag["group-by"], _tag["index-of"], _tag["join"], _tag["join-str"], _tag["last-index-of"], _tag["map"], _tag["map-indexed"], _tag["mappend"], _tag["max"], _tag["min"], _tag["nth"], _tag["pairs-map"], _tag["prepend"], _tag["reduce"], _tag["reverse"], _tag["slice"], _tag["sort"], _tag["sort-by"], _tag["take"], _tag["take-last"], _tag["to-set"], _tag["first"], _tag["rest"], _tag["dissoc"], _tag["to-list"], _tag["map-pair"], _tag["filter-pair"], _tag["apply"], _tag["flatten"]), _tag["any?"], any_$q_, _tag["add"], $calcit_procs.append, _tag["append"], $calcit_procs.append, _tag["assoc"], $calcit_procs._$n_list_$o_assoc, _tag["assoc-after"], $calcit_procs._$n_list_$o_assoc_after, _tag["assoc-before"], $calcit_procs._$n_list_$o_assoc_before, _tag["bind"], mapcat, _tag["butlast"], $calcit_procs.butlast, _tag["concat"], $calcit_procs._$n_list_$o_concat, _tag["contains?"], $calcit_procs._$n_list_$o_contains_$q_, _tag["includes?"], $calcit_procs._$n_list_$o_includes_$q_, _tag["count"], $calcit_procs._$n_list_$o_count, _tag["drop"], drop, _tag["each"], each, _tag["empty"], function _$n_list_$o_empty(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&list:empty', 1, arguments.length);
return $calcit_procs._$L_()
}
, _tag["empty?"], $calcit_procs._$n_list_$o_empty_$q_, _tag["filter"], _$n_list_$o_filter, _tag["filter-not"], filter_not, _tag["find"], find, _tag["find-index"], find_index, _tag["find-last"], _$n_list_$o_find_last, _tag["find-last-index"], _$n_list_$o_find_last_index, _tag["foldl"], function method_$o_foldl(xs, v0, f) { 
if (arguments.length !== 3) throw _calcit_args_mismatch('method:foldl', 3, arguments.length);
return $calcit_procs.foldl(xs, v0, f)
}
, _tag["get"], $calcit_procs._$n_list_$o_nth, _tag["get-in"], get_in, _tag["group-by"], group_by, _tag["index-of"], index_of, _tag["join"], join, _tag["join-str"], join_str, _tag["last-index-of"], _$n_list_$o_last_index_of, _tag["map"], _$n_list_$o_map, _tag["map-indexed"], map_indexed, _tag["mappend"], function _$n_list_$o_mappend(x, y) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&list:mappend', 2, arguments.length);
return $calcit_procs._$n_list_$o_concat(x, y)
}
, _tag["max"], _$n_list_$o_max, _tag["min"], _$n_list_$o_min, _tag["nth"], $calcit_procs._$n_list_$o_nth, _tag["pairs-map"], pairs_map, _tag["prepend"], $calcit_procs.prepend, _tag["reduce"], reduce, _tag["reverse"], $calcit_procs._$n_list_$o_reverse, _tag["slice"], $calcit_procs._$n_list_$o_slice, _tag["sort"], function method_$o_sort(x, y) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('method:sort', 2, arguments.length);
return $calcit_procs.sort(x, y)
}
, _tag["sort-by"], _$n_list_$o_sort_by, _tag["take"], take, _tag["take-last"], take_last, _tag["to-set"], $calcit_procs._$n_list_$o_to_set, _tag["first"], $calcit_procs._$n_list_$o_first, _tag["rest"], $calcit_procs._$n_list_$o_rest, _tag["dissoc"], $calcit_procs._$n_list_$o_dissoc, _tag["to-list"], identity, _tag["map-pair"], _$n_list_$o_map_pair, _tag["filter-pair"], _$n_list_$o_filter_pair, _tag["apply"], function _$n_fn_$o_apply(xs, fs) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&fn:apply', 2, arguments.length);
return $calcit_procs._$n_list_$o_concat(...listToArray(map(fs, function _$n_fn_$o_ap_gen(f) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&fn:ap-gen', 1, arguments.length);
return map(xs, function _$n_fn_$o_ap_gen(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&fn:ap-gen', 1, arguments.length);
return f(x)
}
)
}
)))
}
, _tag["flatten"], _$n_list_$o_flatten);

export var _$n_core_map_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-map-class"], _tag["add"], _tag["assoc"], _tag["common-keys"], _tag["contains?"], _tag["count"], _tag["destruct"], _tag["diff-keys"], _tag["diff-new"], _tag["dissoc"], _tag["empty"], _tag["empty?"], _tag["filter"], _tag["filter-kv"], _tag["get"], _tag["get-in"], _tag["includes?"], _tag["keys"], _tag["map"], _tag["map-kv"], _tag["map-list"], _tag["mappend"], _tag["merge"], _tag["to-list"], _tag["to-map"], _tag["to-pairs"], _tag["values"]), _tag["add"], _$n_map_$o_add_entry, _tag["assoc"], $calcit_procs._$n_map_$o_assoc, _tag["common-keys"], $calcit_procs._$n_map_$o_common_keys, _tag["contains?"], $calcit_procs._$n_map_$o_contains_$q_, _tag["count"], $calcit_procs._$n_map_$o_count, _tag["destruct"], $calcit_procs._$n_map_$o_destruct, _tag["diff-keys"], $calcit_procs._$n_map_$o_diff_keys, _tag["diff-new"], $calcit_procs._$n_map_$o_diff_new, _tag["dissoc"], $calcit_procs._$n_map_$o_dissoc, _tag["empty"], function _$n_map_$o_empty(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&map:empty', 1, arguments.length);
return $calcit_procs._$n__$M_()
}
, _tag["empty?"], $calcit_procs._$n_map_$o_empty_$q_, _tag["filter"], _$n_map_$o_filter, _tag["filter-kv"], _$n_map_$o_filter_kv, _tag["get"], $calcit_procs._$n_map_$o_get, _tag["get-in"], get_in, _tag["includes?"], $calcit_procs._$n_map_$o_includes_$q_, _tag["keys"], keys, _tag["map"], _$n_map_$o_map, _tag["map-kv"], map_kv, _tag["map-list"], _$n_map_$o_map_list, _tag["mappend"], merge, _tag["merge"], merge, _tag["to-list"], $calcit_procs._$n_map_$o_to_list, _tag["to-map"], identity, _tag["to-pairs"], $calcit_procs.to_pairs, _tag["values"], vals);

export var _$n_core_nil_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-nil-class"], _tag["to-list"], _tag["to-map"], _tag["pairs-map"], _tag["to-set"], _tag["to-string"], _tag["to-number"], _tag["map"], _tag["filter"], _tag["bind"], _tag["mappend"], _tag["apply"]), _tag["to-list"], function _$n_nil_$o_to_list(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:to-list', 1, arguments.length);
return $calcit_procs._$L_()
}
, _tag["to-map"], function _$n_nil_$o_to_map(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:to-map', 1, arguments.length);
return $calcit_procs._$n__$M_()
}
, _tag["pairs-map"], function _$n_nil_$o_pairs_map(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:pairs-map', 1, arguments.length);
return $calcit_procs._$n__$M_()
}
, _tag["to-set"], function _$n_nil_$o_to_set(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:to-set', 1, arguments.length);
return $calcit_procs._SHA__$M_()
}
, _tag["to-string"], function _$n_nil_$o_to_string(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:to-string', 1, arguments.length);
return ""
}
, _tag["to-number"], function _$n_nil_$o_to_number(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&nil:to-number', 1, arguments.length);
return 0
}
, _tag["map"], function _$n_nil_$o_map(_, _f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&nil:map', 2, arguments.length);
}
, _tag["filter"], function _$n_nil_$o_filter(_, _f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&nil:filter', 2, arguments.length);
}
, _tag["bind"], function _$n_nil_$o_bind(_, _f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&nil:bind', 2, arguments.length);
}
, _tag["mappend"], function _$n_nil_$o_mappend(_, x) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&nil:mappend', 2, arguments.length);
return x
}
, _tag["apply"], function _$n_nil_$o_apply(_, _f) { 
if (arguments.length !== 2) throw _calcit_args_mismatch('&nil:apply', 2, arguments.length);
}
);

export var _$n_core_number_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-number-class"], _tag["ceil"], _tag["empty"], _tag["floor"], _tag["format"], _tag["display-by"], _tag["inc"], _tag["pow"], _tag["round"], _tag["round?"], _tag["fract"], _tag["sqrt"], _tag["negate"], _tag["rem"]), _tag["ceil"], $calcit_procs.ceil, _tag["empty"], function _$n_number_$o_empty(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&number:empty', 1, arguments.length);
return 0
}
, _tag["floor"], $calcit_procs.floor, _tag["format"], $calcit_procs._$n_number_$o_format, _tag["display-by"], $calcit_procs._$n_number_$o_display_by, _tag["inc"], inc, _tag["pow"], $calcit_procs.pow, _tag["round"], $calcit_procs.round, _tag["round?"], $calcit_procs.round_$q_, _tag["fract"], $calcit_procs._$n_number_$o_fract, _tag["sqrt"], $calcit_procs.sqrt, _tag["negate"], negate, _tag["rem"], $calcit_procs._$n_number_$o_rem);

export var _$n_core_set_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-set-class"], _tag["add"], _tag["contains?"], _tag["count"], _tag["destruct"], _tag["difference"], _tag["empty"], _tag["empty?"], _tag["exclude"], _tag["filter"], _tag["include"], _tag["includes?"], _tag["intersection"], _tag["mappend"], _tag["max"], _tag["min"], _tag["to-list"], _tag["to-set"], _tag["union"]), _tag["add"], include, _tag["contains?"], $calcit_procs._$n_set_$o_includes_$q_, _tag["count"], $calcit_procs._$n_set_$o_count, _tag["destruct"], $calcit_procs._$n_set_$o_destruct, _tag["difference"], difference, _tag["empty"], function _$n_set_$o_empty(x) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&set:empty', 1, arguments.length);
return $calcit_procs._SHA__$M_()
}
, _tag["empty?"], $calcit_procs._$n_set_$o_empty_$q_, _tag["exclude"], exclude, _tag["filter"], _$n_set_$o_filter, _tag["include"], include, _tag["includes?"], $calcit_procs._$n_set_$o_includes_$q_, _tag["intersection"], intersection, _tag["mappend"], union, _tag["max"], _$n_set_$o_max, _tag["min"], _$n_set_$o_min, _tag["to-list"], $calcit_procs._$n_set_$o_to_list, _tag["to-set"], identity, _tag["union"], union);

export var _$n_core_string_class = $calcit_procs._$n__PCT__$M_($calcit_procs.new_record(_tag["&core-string-class"], _tag["blank?"], _tag["count"], _tag["empty"], _tag["ends-with?"], _tag["get"], _tag["parse-float"], _tag["replace"], _tag["split"], _tag["split-lines"], _tag["starts-with?"], _tag["strip-prefix"], _tag["strip-suffix"], _tag["slice"], _tag["trim"], _tag["empty?"], _tag["contains?"], _tag["includes?"], _tag["nth"], _tag["first"], _tag["rest"], _tag["pad-left"], _tag["pad-right"], _tag["find-index"], _tag["get-char-code"], _tag["escape"], _tag["mappend"]), _tag["blank?"], $calcit_procs.blank_$q_, _tag["count"], $calcit_procs._$n_str_$o_count, _tag["empty"], function _$n_str_$o_empty(_) { 
if (arguments.length !== 1) throw _calcit_args_mismatch('&str:empty', 1, arguments.length);
return ""
}
, _tag["ends-with?"], $calcit_procs.ends_with_$q_, _tag["get"], $calcit_procs._$n_str_$o_nth, _tag["parse-float"], $calcit_procs.parse_float, _tag["replace"], $calcit_procs._$n_str_$o_replace, _tag["split"], $calcit_procs.split, _tag["split-lines"], $calcit_procs.split_lines, _tag["starts-with?"], $calcit_procs.starts_with_$q_, _tag["strip-prefix"], strip_prefix, _tag["strip-suffix"], strip_suffix, _tag["slice"], $calcit_procs._$n_str_$o_slice, _tag["trim"], $calcit_procs.trim, _tag["empty?"], $calcit_procs._$n_str_$o_empty_$q_, _tag["contains?"], $calcit_procs._$n_str_$o_contains_$q_, _tag["includes?"], $calcit_procs._$n_str_$o_includes_$q_, _tag["nth"], $calcit_procs._$n_str_$o_nth, _tag["first"], $calcit_procs._$n_str_$o_first, _tag["rest"], $calcit_procs._$n_str_$o_rest, _tag["pad-left"], $calcit_procs._$n_str_$o_pad_left, _tag["pad-right"], $calcit_procs._$n_str_$o_pad_right, _tag["find-index"], $calcit_procs._$n_str_$o_find_index, _tag["get-char-code"], $calcit_procs.get_char_code, _tag["escape"], $calcit_procs._$n_str_$o_escape, _tag["mappend"], $calcit_procs._$n_str_$o_concat);


$calcit_procs.register_calcit_builtin_classes({
  list: _$n_core_list_class,
  map: _$n_core_map_class,
  number: _$n_core_number_class,
  set: _$n_core_set_class,
  string: _$n_core_string_class,
  nil: _$n_core_nil_class,
  fn: _$n_core_fn_class,
});

let runtimeVersion = $calcit_procs.calcit_version;
let cli_version = '0.8.4';

if (runtimeVersion !== cli_version) {
  console.warn(`[Warning] versions mismatch, CLI using: ${cli_version}, runtime using: ${runtimeVersion}`)
}
