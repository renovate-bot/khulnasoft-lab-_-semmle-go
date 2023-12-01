import go

from Method m, string pkg, string tp, string name
where
  m.implements(pkg, tp, name) and
  m.hasQualifiedName("github.com/khulnasoft-lab/semmle-go/ql/test/library-tests/semmle/go/Scopes", _, _)
select m.getReceiverType().pp(), m.getName(), pkg, tp, name
