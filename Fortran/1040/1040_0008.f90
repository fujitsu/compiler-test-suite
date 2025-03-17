module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
  pure function f2(xxx)
    integer,intent(in) :: xxx(:)
    integer f2(0:size(xxx))
    do i=1,size(xxx)
    f2(i)=i
    enddo
    f2=1
  end function
  pure function f3(xxx)
    integer,intent(in) :: xxx(:)
    integer f3(2:size(xxx))
    do i=2,size(xxx)
    f3(i)=i
    enddo
  end function
  pure function f4(xxx)
    integer,intent(in) :: xxx(:)
    integer f4(20000:size(xxx))
    do i=20000,size(xxx)
    f4(i)=i
    enddo
  end function

end

use m1 
integer,allocatable:: x(:)
integer y(0),a(2),b(3),c(1),xx(0),xxx(-10),xxxx(-1:0)
allocate(x(0))
y=f1(x)
y=f1(xx)
y=f1(xxx)
a=f1(xxxx)
if (a(1).ne.1) write(6,*) "NG"
if (a(2).ne.2) write(6,*) "NG" ;y=0


c=f2(x)
c=f2(xx)
c=f2(xxx)
b=f2(xxxx)

y=f3(x)
y=f3(xx)
y=f3(xxx)
c=f3(xxxx)

y=f4(x)
y=f4(xx)
y=f4(xxx)
y=f4(xxxx)
y=f4(a)
y=f4(b)


print *,"pass"
end
