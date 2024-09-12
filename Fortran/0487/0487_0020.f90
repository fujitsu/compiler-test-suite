module m1
 type x
   integer::x1
end type
contains
 subroutine s1(d)
 type(x),target::d(:)
 integer,pointer::p1(:),p2(:),p3(:)
 if (any(shape(d)/=[2])) print *,201,shape(d)
 p1=> d%x1
 call ss(p1)
 p2=> d(:)%x1
 call ss(p2)
 p3=> d(1:2)%x1
 call ss(p3)
 end subroutine
 subroutine ss(k)
  integer k(2)
  if (any(k/=[1,3])) print *,101,k
 end subroutine
end
subroutine s
 use m1
 type(x),target::a(3)
 a%x1=[1,2,3]
 call s1( a(::2) )
end
call s
print *,'pass'
end
