integer::i=1,k=2
type ty
character(len=5)::ch(3) ='abcde'
end type

type(ty)::obj
associate(aa=>i, bb=>k,cc=>obj)
cc%ch(aa+bb) = 'xxxxx'
if (cc%ch(aa+bb) .EQ. 'xxxxx') then
  print *,'PASS'
else
  print *,'FAIL'
endif
end associate

end
