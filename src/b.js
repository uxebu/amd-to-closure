define([
  'require',
  './c'
], function (require) {
  var c = require('./c');
  console.log('the b module');
  return {
    foo: 'the foo',
    c: c
  };
});
