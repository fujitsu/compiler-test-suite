module m1
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=0) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub1()
use m1 
integer,allocatable:: x(:)
character(len=0) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m2
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=size(xxx)) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub2()
use m2 
integer,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m3
procedure(f1),pointer::f
contains
  function f1(xxx,i)
    integer,intent(in) :: xxx(:)
    character(len=i) f1(size(xxx))
    do ii=1,size(xxx)
    f1(ii)=char(ii)
    enddo
  end function
end
subroutine sub3()
use m3 
integer,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x,2)
deallocate(x)
end
module m4
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=size(+xxx)) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub4()
use m4 
integer,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m5
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=kind(1)) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub5()
use m5 
integer,allocatable:: x(:)
character(len=kind(1)) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m6
procedure(f1),pointer::f
contains
  function f1(xxx,i)
    integer,intent(in) :: xxx(:)
    character(len=1+i) f1(size(xxx))
    do ii=1,size(xxx)
    f1(ii)=char(ii)
    enddo
  end function
end
subroutine sub6()
use m6
integer,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x,1)
end
module m7
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=kind(1)+2) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub7()
use m7
integer,allocatable:: x(:)
character(len=kind(1)+2) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m8
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    character(len=-1) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub8()
use m8
integer,allocatable:: x(:)
character(len=-1) y(2)
allocate(x(2))
f=>f1
y=f(x)
end
module m9
procedure(f1),pointer::f
contains
  pure function f1(xxx)
    character(len=*),intent(in) :: xxx(:)
    character(len=2) f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=char(i)
    enddo
  end function
end
subroutine sub9()
use m9
character,allocatable:: x(:)
character(len=2) y(2)
allocate(x(2))
f=>f1
y=f(x)
end

call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
print *,"pass"
end
