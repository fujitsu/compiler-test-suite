integer::i=1,k=3
type ty
character(len=5)::ch(3) ='abcde'
end type

type(ty)::obj
associate(aa=>i, bb=>k,cc=>obj)
cc%ch(aa:bb) = 'xxxxx'
where (cc%ch(:)(aa:bb) == 'xxx') cc%ch(:)(aa:bb) = 'yyy'
if ((cc%ch(aa) == 'yyyxx') .AND. (cc%ch(bb) == 'yyyxx'))  print *,'PASS'
end associate
end
