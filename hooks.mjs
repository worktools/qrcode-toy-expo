import { createElement, Fragment, useRef, useState } from 'react';

// Preserve the Calcit-owned cell and value types across React re-renders.
export default {
  element(component, props, children) {
    return createElement(component, props, ...children);
  },
  fragment(children) {
    return createElement(Fragment, null, ...children);
  },
  useCell(initial) {
    return useRef(initial).current;
  },
  useSetter(initial) {
    const [, setValue] = useState(() => initial);
    return (value) => setValue(() => value);
  },
};
