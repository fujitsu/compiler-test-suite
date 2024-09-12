module m1
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
forall (i=1:2)
y=f1(x)
end forall
a=1
where(a==1)
y=f1(x)
else where
y=f1(x)
end where
y=f1(x(1:))
y=f1(x(:2))
i=2
y=f1(x(:i))
y=(/1,2/)
y=f1(f1(x(y)))
y=ifun2(x)
do i=1,ifun(f1(x))
call sub(f1(x),f1(x),f1(x))
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
ifun2 = f1(a)
end function
end
