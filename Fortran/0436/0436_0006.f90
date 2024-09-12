MODULE m1
type xx
integer::c=10
integer,allocatable:: u1(:)
integer,allocatable:: u2(:)
integer,allocatable:: u3(:)
integer,allocatable:: u4(:)
end type
type x
 integer:: x1=10
 type(xx),allocatable:: x2
end type
contains
elemental function f(d) result(r)
  integer(8),intent(in):: d
  integer(8):: r
  r=d
  END FUNCTION
  ELEMENTAL FUNCTION ff( d ) RESULT( r ) 
    TYPE(x), INTENT(IN) :: d
    TYPE(x) :: r
   r=d 
  END FUNCTION
end
subroutine s1
use  m1
integer(8):: a(2)=[4,4]
integer(8)::k(2)
k=1
call ss(xx(u1=k,u2=k+1,u3=[3,3],u4=a(1:2)))
call ss(xx(u1=f(k),u2=f(k+1),u3=f([3_8,3_8]),u4=f(a(1:2))))
call tt(x(1,xx(u1=k,u2=k+1,u3=[3,3],u4=a(1:2))))
call tt(x(1,xx(u1=f(k),u2=f(k+1),u3=f([3_8,3_8]),u4=f(a(1:2)))))
call tt(ff(x(1,xx(u1=k,u2=k+1,u3=[3,3],u4=a(1:2)))))
call tt(ff(x(1,xx(u1=f(k),u2=f(k+1),u3=f([3_8,3_8]),u4=f(a(1:2))))))
end
do k=1,30
call s1
end do
print *,'pass'
end
subroutine tt(w)
use m1
type(x):: w
if (w%x1/=1)print *,1011
call ss(w%x2)
end
subroutine ss(w)
use m1
type(xx):: w
if (w%c/=10)print *,101
if (any(w%u1/=1))print *,101
if (any(w%u2/=2))print *,101
if (any(w%u3/=3))print *,101
if (any(w%u4/=4))print *,101
end

