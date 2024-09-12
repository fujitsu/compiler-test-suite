subroutine s1
   type x1
      integer::v1(3)
   end type
   type(x1):: v2(3),v3
   v3%v1=[1,2,3]
   v2(2)%v1=[1,2,3]
   k1=1
   k2=2
   k3=3
   call foo(v3%v1(1:3:2))
   call foo(v3%v1(k1:k3:k2))
   call foo(v2(2)%v1(1:3:2))
   call foo(v2(2)%v1(k1:k3:k2))
  contains
subroutine foo(x)
integer::x(2)
if (x(1)/=1)print *,101
if (x(2)/=3)print *,102
end subroutine
end
call s1
print *,'pass'
end
  

