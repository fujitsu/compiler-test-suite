subroutine s1
 type x
  integer::x1
  integer,allocatable::x2(:)
 end type
 type(x):: xv
 type y
  integer::y1
  type(x)::y2
 end type
 xv=x(x1=11 , x2=[12,13])
 call foo( y(y1=1 , y2= xv) , xv)
contains
subroutine foo( yd , xd) 
type(x):: xd
type(y):: yd
if (yd%y1/=1) print *,1001
if (yd%y2%x1/=11) print *,1001
if (any(yd%y2%x2/=[12,13])) print *,1002
if (xd%x1/=11) print *,1011
if (any(xd%x2/=[12,13])) print *,1012
if (loc(yd%y2%x2)==loc(xd%x2)) then
    print *,2001
    print '(z16.16)',loc(yd%y2%x2)
    print '(z16.16)',loc(xd%x2)
end if
end subroutine
end
call s1
print *,'pass'
end
