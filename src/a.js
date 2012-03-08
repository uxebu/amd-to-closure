define([
  './b',
  './c'
], function (b, c) {
  var d = b.foo;
  var e = c.bar;
  console.log('the a module');

  function run() {
    console.log('running');
  }

  run();

  return {
    d: d,
    e: e
  };

});
