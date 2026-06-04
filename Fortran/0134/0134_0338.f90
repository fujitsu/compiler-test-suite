module m
  integer::i
 contains
   elemental function fun(a) result(r)
    character(i)::r
    integer,intent(in)::a
    r=char(a)
   end function
end
use m
integer::b(2)
character(1)::c(2)
i=1
b=[iachar('1'),iachar('2')]
c=fun(b)
if (any(c/=['1','2']))print *,101,c
print *,'pass'
end
