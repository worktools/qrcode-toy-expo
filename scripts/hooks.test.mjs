import assert from 'node:assert/strict';
import test from 'node:test';
import React from 'react';
import { act, create } from 'react-test-renderer';
import * as runtime from '../js-out/calcit.core.mjs';
import { use_atom, _LT__GT_ as element, _LT__GT__LT__GT_ as fragment } from '../js-out/app.core.mjs';

const read = (atom) => runtime.invoke_method('deref', atom);
const write = (atom, value) => runtime.invoke_method('set!', atom, value);
const swap = (atom, update) => runtime.invoke_method('swap!', atom, update);

test('scan visibility reads the latest cell during batched toggles and re-render', () => {
  let atom;
  function Screen() {
    atom = use_atom(false);
    return fragment(element('visibility', {}, String(read(atom))));
  }
  let view;
  act(() => { view = create(React.createElement(Screen)); });
  const original = atom;
  act(() => {
    write(original, true);
    assert.equal(read(original), true);
    swap(original, (value) => !value);
    assert.equal(read(original), false);
    swap(original, (value) => !value);
  });
  assert.equal(view.toJSON().children[0], 'true');
  assert.equal(read(original), true);
  act(() => { write(atom, false); });
  assert.equal(read(original), false);
  assert.equal(view.toJSON().children[0], 'false');
  act(() => { view.unmount(); });
});

test('text input keeps Unicode edits across parent re-renders', () => {
  let draft;
  function Screen({ label }) {
    draft = use_atom('');
    return element('draft', { label }, read(draft));
  }
  let view;
  act(() => { view = create(React.createElement(Screen, { label: 'before' })); });
  act(() => { write(draft, '031 文本 🐈'); });
  act(() => { view.update(React.createElement(Screen, { label: 'after' })); });
  assert.equal(read(draft), '031 文本 🐈');
  assert.equal(view.toJSON().children[0], '031 文本 🐈');
  assert.equal(view.toJSON().props.label, 'after');
  act(() => { view.unmount(); });
});

test('scan result preserves no-result versus a present empty String', () => {
  let result;
  const none = runtime._PCT__$o__$o_(runtime.Option, runtime.newTag('none'));
  const some = (text) => runtime._PCT__$o__$o_(runtime.Option, runtime.newTag('some'), text);
  function Screen() {
    result = use_atom(none);
    return null;
  }
  let view;
  act(() => { view = create(React.createElement(Screen)); });
  assert.equal(runtime._$n_enum_$o_nth(read(result), 0), runtime.newTag('none'));
  act(() => { write(result, some('')); });
  assert.equal(runtime._$n_enum_$o_nth(read(result), 0), runtime.newTag('some'));
  assert.equal(runtime._$n_enum_$o_nth(read(result), 1), '');
  act(() => { write(result, some('1234567890')); });
  assert.equal(runtime._$n_enum_$o_nth(read(result), 1), '1234567890');
  act(() => { view.unmount(); });
});
