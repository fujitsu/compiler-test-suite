module m1
type xw
procedure(f1),nopass,pointer::f1p
end type
type(xw)::v
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end

use m1 
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
v%f1p=>f1
forall (i=1:2)
y=v%f1p(x)
end forall
a=1
where(a==1)
y=v%f1p(x)
else where
y=v%f1p(x)
end where
y=v%f1p(x(1:))
y=v%f1p(x(:2))
i=2
y=v%f1p(x(:i))
y=(/1,2/)
y=v%f1p(v%f1p(x(y)))
y=ifun2(x)
do i=1,ifun(v%f1p(x))
call sub(v%f1p(x),v%f1p(x),v%f1p(x))
end do
print *,"pass"
contains
subroutine sub(a,b,c)
integer a(2),b(2),c(2)
end subroutine
function ifun(a)
integer a(2)
ifun = a(1)
end function
function ifun2(a)
integer a(2),ifun2(2)
ifun2 = v%f1p(a)
end function
end
