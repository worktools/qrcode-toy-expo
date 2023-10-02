
import * as $calcit from "./calcit.core.mjs";
import { comp_container } from "./app.comp.container.mjs";
import registerRootComponent from "expo/build/launch/registerRootComponent";
var _tag={};
[].forEach(x => {
  _tag[x] = $calcit.newTag(x);
});


let _calcit_args_mismatch = (name, expected, got) => {
  return new Error(`\`${name}\` expected ${expected} params, got ${got}`);
};

export function main_$x_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('main!', 0, arguments.length);
return registerRootComponent(comp_container)
}
export function reload_$x_() { 
if (arguments.length !== 0) throw _calcit_args_mismatch('reload!', 0, arguments.length);
}



