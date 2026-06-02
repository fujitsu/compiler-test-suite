module base_mod
  type::base_type
    integer::x1
   contains
    procedure:: proc=>base_proc
  end type
  type(base_type)::v
 contains
    subroutine base_proc(this, a01,a02,n,k,m)
      class(base_type)  :: this
      real :: a01(k:3,k,n:*),a02(k:3,k,n:*)
write(1,*) 1
if (.not.same_type_as(this,v)) print *,10001
if (lbound(a01,1)/=2) print *,20001
if (ubound(a01,1)/=3) print *,20002
if (lbound(a01,2)/=1) print *,20011
if (ubound(a01,2)/=2) print *,20012
if (lbound(a01,3)/=1) print *,20003
if (any(a01(:,:,:3)/=1)) print *,20006
if (lbound(a02,1)/=2) print *,21001
if (ubound(a02,1)/=3) print *,21002
if (lbound(a02,2)/=1) print *,20021
if (ubound(a02,2)/=2) print *,20022
if (lbound(a02,3)/=1) print *,21003
if (any(a02(:,:,:3)/=1)) print *,21006
if (this%x1/=1) print *,20007
do n3=lbound(a02,3),lbound(a02,3)+2
  do n2=lbound(a02,2),ubound(a02,2)
  do n1=lbound(a02,1),ubound(a02,1)
    if (a01(n1,n2,n3)/=1) print *,4002
    if (a02(n1,n2,n3)/=1) print *,4022
  end do
end do
end do
    end subroutine
end
module ext_mod
  use base_mod
  type, extends(base_type) :: ext_type
    integer::x2
   contains
     procedure :: proc
  end type 
contains
    subroutine proc(this, a01,a02,n,k,m)
      class(ext_type) :: this
      real :: a01(k:3,k,n:*),a02(k:3,k,n:*)
write(1,*) 2
if (same_type_as(this,v)) print *,11001
if (lbound(a01,1)/=2) print *,30001
if (ubound(a01,1)/=3) print *,30002
if (lbound(a01,2)/=1) print *,30011
if (ubound(a01,2)/=2) print *,30012
if (lbound(a01,3)/=1) print *,30003
if (any(a01(:,:,:3)/=1)) print *,30006
if (lbound(a02,1)/=2) print *,31001
if (ubound(a02,1)/=3) print *,31002
if (lbound(a02,2)/=1) print *,30021
if (ubound(a02,2)/=2) print *,30022
if (lbound(a02,3)/=1) print *,31003
if (any(a02(:,:,:3)/=1)) print *,31006
if (this%x1/=1) print *,21007
if (this%x2/=2) print *,21008
do n3=lbound(a02,3),lbound(a02,3)+2
  do n2=lbound(a02,2),ubound(a02,2)
  do n1=lbound(a02,1),ubound(a02,1)
    if (a01(n1,n2,n3)/=1) print *,4002
    if (a02(n1,n2,n3)/=1) print *,4022
  end do
end do
end do
    end subroutine
end

use ext_mod
  class(base_type),allocatable  :: this
  integer,parameter::n=1,k=2,m=0
      real :: a01(2:3,2,3)=1,a02(2:3,2,3)=1
allocate(this)
this%x1=1
call this%proc(a01,a02,n,k,m)
deallocate(this)
allocate(ext_type::this)
this%x1=1
select type(this)
  type is(ext_type)
    this%x2=2
end select
call this%proc(a01,a02,n,k,m)
deallocate(this)
allocate(this)
this%x1=1
call this%proc(a01,a02,n,k,m)
rewind 1
read(1,*) nn
if (nn/=1) print *,3001
read(1,*) nn
if (nn/=2) print *,3002
read(1,*) nn
if (nn/=1) print *,3003
        
print *,'sngg504m : pass'
end
