call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
print *,"pass"
end
function ext()
ext=1
end

module m1
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(xxx))
    entry f2(ii,xxx) result(ff)
    entry f3(ii,xxx,jj) result(ff)
    entry f4(xxx,ii) result(ff)
    entry f5(ext,xxx) result(ff)
    external ext
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub1()
use m1 
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f2(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f3(100,x,100)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f4(x,1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f5(ext,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"

end

module m2
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(+size(xxx))
    entry f2(ii,xxx) result(ff)
    entry f3(ii,xxx,jj) result(ff)
    entry f4(xxx,ii) result(ff)
    entry f5(ext,xxx) result(ff)
    external ext
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub2()
use m2 
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f2(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f3(100,x,100)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f4(x,1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f5(ext,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
end
module m3
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff((size(xxx)))
    entry f2(ii,xxx) result(ff)
    entry f3(ii,xxx,jj) result(ff)
    entry f4(xxx,ii) result(ff)
    entry f5(ext,xxx) result(ff)
    external ext
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub3()
use m3
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f2(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f3(100,x,100)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f4(x,1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f5(ext,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
end
module m4
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size((xxx)))
    entry f2(ii,xxx) result(ff)
    entry f3(ii,xxx,jj) result(ff)
    entry f4(xxx,ii) result(ff)
    entry f5(ext,xxx) result(ff)
    external ext
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub4()
use m4
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f2(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f3(100,x,100)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f4(x,1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f5(ext,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
end
module m5
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(size(+xxx))
    entry f2(ii,xxx) result(ff)
    entry f3(ii,xxx,jj) result(ff)
    entry f4(xxx,ii) result(ff)
    entry f5(ext,xxx) result(ff)
    external ext
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub5()
use m5
external ext
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f2(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f3(100,x,100)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f4(x,1)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
y=f5(ext,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG"
end
