module base_mod
  type::base_type
   contains
    procedure:: proc=>base_proc
  end type
   integer::k
   integer,parameter::x(2,3)=reshape([1,2,3,4,5,6],[2,3])
   contains
    subroutine base_proc(this, d1,d2,d3,d4,d5,d6,d7,d8)
      class(base_type)  :: this
      integer :: d1(2:,:)
      integer :: d2(k,*)
      integer :: d3(:,:)
      integer :: d4(..)
      integer :: d5(k:k+1,k:k+2)
      integer :: d6(2:3,2:4)
      integer,pointer :: d7(:,:)
      integer,allocatable :: d8(:,:)
print *,'base_proc'
    end subroutine
end
module ext_mod
  use base_mod
  type, extends(base_type) :: ext_type
   contains
     procedure :: proc
  end type 
  contains
    subroutine proc(this, d1,d2,d3,d4,d5,d6,d7,d8)
      class(ext_type)  :: this
      integer :: d1(2:,:)
      integer :: d2(k,*)
      integer :: d3(:,:)
      integer :: d4(..)
      integer :: d5(k:k+1,k:k+2)
      integer :: d6(2:3,2:4)
      integer,pointer :: d7(:,:)
      integer,allocatable :: d8(:,:)
if (any(lbound(d1)/=[2,1])) print *,2001
if (any(ubound(d1)/=[3,3])) print *,2002
if (any(      (d1)/=x    )) print *,2003
if (   (d1(2,1)  /=x(1,1)    )) print *,2004
if (   (d1(3,3)  /=x(2,3)    )) print *,2005
write(1,*) d1
write(1,*) d2(:,:3)
write(1,*) d3
!write(1,*) d4
write(1,*) d5
write(1,*) d6
write(1,*) d7
write(1,*) d8
    end subroutine
 end

subroutine foo
use ext_mod
      integer :: d1(2,3)
      integer :: d2(k,3)
      integer :: d3(2,3)
      integer :: d4(2,3)
      integer :: d5(k:k+1,k:k+2)
      integer :: d6(2:3,2:4)
      integer,pointer :: d7(:,:)
      integer,allocatable :: d8(:,:)
class(base_type),allocatable  :: this
allocate(ext_type :: this)
allocate(d7(2,3),d8(2,3),source=x)
d1=x
d2=x
d3=x
d4=x
d5=x
d6=x
call this%proc(d1,d2,d3,d4,d5,d6,d7,d8)
end
use ext_mod
k=2
call foo
call chk
print *,'sngg890m : pass'
end
subroutine chk
use ext_mod
      integer :: d(2,3)
rewind 1
read(1,*) d
if (any(d/=x))print *,9001
read(1,*) d
if (any(d/=x))print *,9002
read(1,*) d
if (any(d/=x))print *,9003
read(1,*) d
if (any(d/=x))print *,9004
read(1,*) d
if (any(d/=x))print *,9005
read(1,*) d
if (any(d/=x))print *,9006
read(1,*) d
if (any(d/=x))print *,9008
end
