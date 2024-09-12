module m1
interface
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
  end function
end interface
end
module m2
use m1 
type w
procedure(f1),nopass,pointer::p
end type
end
module m3
use m2
type(w)::v
end
use m3
v%p=>f1
call s1
print *,"pass"
end
subroutine s1
use m3
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
forall (i=1:2)
y=v%p (x)
end forall
a=1
where(a==1)
y=v%p (x)
else where
y=v%p (x)
end where
y=v%p (x(1:))
y=v%p (x(:2))
i=2
y=v%p (x(:i))
y=(/1,2/)
y=v%p (v%p (x(y)))
y=ifun2(x)
do i=1,ifun(v%p (x))
call sub( v%p(x), v%p(x),v%p (x))
end do
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
ifun2 = f1(a)
end function
end
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
