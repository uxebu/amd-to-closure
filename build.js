var module$c = {};
console.log("the c module");
module$c.module$exports = {bar:"the bar"};
module$c.module$exports && (module$c = module$c.module$exports);
var module$b = {};
module$c;
var c$$module$b = module$c;
console.log("the b module");
module$b.module$exports = {foo:"the foo", c:c$$module$b};
module$b.module$exports && (module$b = module$b.module$exports);
var module$a = {}, b$$module$a = module$b, c$$module$a = module$c, d$$module$a = b$$module$a.foo, e$$module$a = c$$module$a.bar;
console.log("the a module");
function run$$module$a() {
  console.log("running")
}
run$$module$a();
module$a.module$exports = {d:d$$module$a, e:e$$module$a};
module$a.module$exports && (module$a = module$a.module$exports);

