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
call subb()
call subc()
call subd()
call sube()
call subf()
call subg()
print *,"pass"
end

module m1
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer(kind=1) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
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
end
module m2
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer(kind=2) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub2()
use m2
integer,allocatable:: x(:)
integer(kind=2) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m3
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer(kind=4) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub3()
use m3
integer,allocatable:: x(:)
integer(kind=4) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m4
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    integer(kind=8) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub4()
use m4
integer,allocatable:: x(:)
integer(kind=1) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module m6
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    real   (kind=4) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub6()
use m6
integer,allocatable:: x(:)
real   (kind=4) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m5
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    real   (kind=8) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub5()
use m5
integer,allocatable:: x(:)
real   (kind=8) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m7
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    real   (kind=16) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub7()
use m7
integer,allocatable:: x(:)
real   (kind=16) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m8
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    complex(kind=16) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub8()
use m8
integer,allocatable:: x(:)
complex(kind=16) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module m9
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    complex(kind=8 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine sub9()
use m9
integer,allocatable:: x(:)
complex(kind=8 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end
module ma
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    complex(kind=4 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=i
    enddo
  end function
end
subroutine suba()
use ma
integer,allocatable:: x(:)
complex(kind=4 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).ne.1) write(6,*) "NG"
if (y(2).ne.2) write(6,*) "NG" ;y=0
end

module mb
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    logical(kind=8 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=.true.
    enddo
  end function
end
subroutine subb()
use mb
integer,allocatable:: x(:)
logical(kind=8 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).neqv..true.) write(6,*) "NG"
if (y(2).neqv..true.) write(6,*) "NG" ;y=.true.
end

module mc
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    logical(kind=4 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=.true.
    enddo
  end function
end
subroutine subc()
use mc
integer,allocatable:: x(:)
logical(kind=4 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).neqv..true.) write(6,*) "NG"
if (y(2).neqv..true.) write(6,*) "NG" ;y=.true.
end
module md
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    logical(kind=2 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=.true.
    enddo
  end function
end
subroutine subd()
use md
integer,allocatable:: x(:)
logical(kind=2 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).neqv..true.) write(6,*) "NG"
if (y(2).neqv..true.) write(6,*) "NG" ;y=.true.
end
module me
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    logical(kind=1 ) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)=.true.
    enddo
  end function
end
subroutine sube()
use me
integer,allocatable:: x(:)
logical(kind=1 ) y(2)
allocate(x(2))
y=f1(x)
if (y(1).neqv..true.) write(6,*) "NG"
if (y(2).neqv..true.) write(6,*) "NG" ;y=.true.
end

module mf
type ty1
 integer aa
end type
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    type(ty1) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)%aa=i
    enddo
  end function
end
subroutine subf()
use mf
integer,allocatable:: x(:)
type(ty1) y(2)
allocate(x(2))
y=f1(x)
if (y(1)%aa.ne.1) write(6,*) "NG"
if (y(2)%aa.ne.2) write(6,*) "NG" ;y=ty1(0)
end

module mg
type ty1
 integer aa(10)
end type
contains
  pure function f1(xxx)
    integer,intent(in) :: xxx(:)
    type(ty1) :: f1(size(xxx))
    do i=1,size(xxx)
    f1(i)%aa=i
    enddo
  end function
end
subroutine subg()
use mg
integer,allocatable:: x(:)
type(ty1) y(2)
allocate(x(2))
y=f1(x)
if (y(1)%aa(2).ne.1) write(6,*) "NG"
if (y(2)%aa(6).ne.2) write(6,*) "NG" ;y=ty1(0)
end

