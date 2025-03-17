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
  subroutine sss(kkk)
  integer,allocatable:: x(:)
  integer:: kkk(:,:)
integer y(2,10,2),a(2)
allocate(x(2))
x=1
kkk=1
y=f1(x,kkk)
if (y(2,2,1).ne.1) write(6,*) "NG"
if (y(2,2,2).ne.2) write(6,*) "NG" ;y=0
contains
  function f1(xxx,yyy) result(ff)
    integer,intent(in) :: xxx(:),yyy(10:,2:)
    integer ff(size(xxx),size(kkk),size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(2,2,i)=i
    enddo
  end function
end subroutine
end
subroutine sub1()
use m1
integer :: vvv(10,1)
call sss(vvv)
end

module m2
integer :: ii
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(ii:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub2()
use m2
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
ii=1
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m3
integer :: ii
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(ii:size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub3()
use m3
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
ii=1
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m4
integer :: ii
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(ii:)
    integer ff(ii:size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub4()
use m4
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
ii=1
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m5
integer :: ii
integer :: xxx(2)
contains
  function f1(yyy) result(ff)
    integer,intent(in) :: yyy(:)
    integer ff(size(xxx))
    ff=0
    do i=1,size(xxx)
    ff(i)=i
    enddo
  end function
end
subroutine sub5()
use m5
integer,allocatable:: x(:)
integer y(2),a(2)
allocate(x(2))
ii=1
x=1
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

