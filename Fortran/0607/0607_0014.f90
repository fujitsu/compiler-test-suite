integer::i=1,k=3
type ty
character(len=5)::ch(3) ='abcde'
end type

type(ty)::obj
associate(aa=>i, bb=>k,cc=>obj)
cc%ch(aa:bb) = 'xxxxx'
if (cc%ch(bb) .EQ. 'xxxxx') then
  print *,'PASS'
else
  print *,'FAIL'
endif
end associate
end
