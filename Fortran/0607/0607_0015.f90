integer::i=1,k=3
type ty
character(len=5)::ch(3) ='abcde'
end type
type ty1
integer::j=3
end type

type(ty)::obj
type(ty1)::obj1
associate(aa=>i, bb=>k,cc=>obj)
forall (m = aa:bb)
where (cc%ch(aa:bb) == 'abcde') cc%ch(aa:obj1%j) = 'xxxxx'
endforall
if (cc%ch(bb) .EQ. 'xxxxx') then
  print *,'PASS'
else
  print *,'FAIL'
endif
end associate

end
