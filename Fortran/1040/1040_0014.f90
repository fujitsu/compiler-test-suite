call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
call suba()
print *,"pass"
end

module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer,intent(in) :: yyy(:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub1()
use m1 
integer,allocatable:: x(:)
integer(kind=1) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end
module m2
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(:)
    integer,intent(in) :: yyy(:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub2()
use m2 
integer,allocatable:: x(:)
integer(kind=1) y(2)
allocate(x(2))
y=f1(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m3
integer p
contains
  function f1(k,xxx)
    integer :: k(p),j(p)
    integer,intent(in) :: xxx(:)
    integer,intent(in) :: yyy(:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub3()
use m3
integer,allocatable:: x(:)
integer(kind=4) y(2),kk(2)
allocate(x(2))
p=2
y=f1(kk,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(kk,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m4
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(:)
    integer :: f1(size(xxx))
    integer :: f2(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,xxx)
    do i=1,size(xxx)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub4()
use m4
integer,allocatable:: x(:)
integer(kind=4) y(2),kk(2)
allocate(x(2))
p=2
y=f1(2,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m5
contains
  function f1(k,xxx)
    integer,pointer :: k,j
    integer,intent(in) :: xxx(:)
    integer,intent(in) :: yyy(:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub5()
use m5
integer,allocatable:: x(:)
integer(kind=4) y(2)
integer ,pointer :: p
allocate(x(2))
y=f1(p,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(p,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m6
contains
  function f1(k,xxx)
    integer,pointer :: k(:),j(:)
    integer,intent(in) :: xxx(:)
    integer,intent(in) :: yyy(:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub6()
use m6
integer,allocatable:: x(:)
integer(kind=4) y(2)
integer ,pointer :: p(:)
allocate(x(2))
y=f1(p,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(p,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m7
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(:,:,:)
    integer,intent(in) :: yyy(:,:,:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub7()
use m7
integer,allocatable:: x(:,:,:)
integer(kind=4) y(8)
allocate(x(2,2,2))
y=f1(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end
module m8
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(:,3:,:)
    integer,intent(in) :: yyy(:,3:,:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub8()
use m8
integer,allocatable:: x(:,:,:)
integer(kind=4) y(8)
allocate(x(2,2,2))
y=f1(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module m9
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(0:,3:,-1:)
    integer,intent(in) :: yyy(0:,3:,-1:)
    integer :: f1(size(xxx))
    integer :: f2(size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine sub9()
use m9
integer,allocatable:: x(:,:,:)
integer(kind=4) y(8)
allocate(x(2,2,2))
y=f1(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end

module ma
contains
  function f1(k,xxx)
    integer,intent(in) :: xxx(0:,3:,-1:)
    integer,intent(in) :: yyy(0:,3:,-1:)
    integer :: f1(1:size(xxx))
    integer :: f2(1:size(yyy))
    do i=1,size(xxx)
    f1(i)=i
    enddo
    return
    entry f2(j,yyy)
    do i=1,size(yyy)
    f1(i)=i+1
    enddo
  end function
end
subroutine suba()
use ma
integer,allocatable:: x(:,:,:)
integer(kind=4) y(8)
allocate(x(2,2,2))
y=f1(1,x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
y=f2(2,x)
if (y(1).ne.2) write(6,*) "NG"
if (y(2).ne.3) write(6,*) "NG" ;y=0
end
