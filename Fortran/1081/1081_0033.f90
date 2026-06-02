module base_mod
  type::base_type
    integer::x1
   contains
    procedure:: proc=>base_proc
  end type
  type(base_type)::v
   contains
    subroutine base_proc(this, assumed_shape,assumed_size,k)
      class(base_type)  :: this
      real :: assumed_size(k,*)
      real :: assumed_shape(2:,:)
write(1,*) 1
if (.not.same_type_as(this,v)) print *,10001
if (lbound(assumed_size,1)/=1) print *,10002
if (ubound(assumed_size,1)/=2) print *,10003
if (lbound(assumed_size,2)/=1) print *,10004
if (lbound(assumed_shape,1)/=2) print *,20001
if (ubound(assumed_shape,1)/=3) print *,20002
if (lbound(assumed_shape,2)/=1) print *,20003
if (ubound(assumed_shape,2)/=3) print *,20004
if (any(assumed_size(:,:3)/=1)) print *,20005
if (any(assumed_shape(:,:)/=1)) print *,20006
if (this%x1/=1) print *,20007
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
    subroutine proc(this, assumed_shape,assumed_size,k)
      class(ext_type)  :: this
      real :: assumed_size(k,*)
      real :: assumed_shape(2:,:)
write(1,*) 2
if (same_type_as(this,v)) print *,11001
if (lbound(assumed_size,1)/=1) print *,11002
if (ubound(assumed_size,1)/=2) print *,11003
if (lbound(assumed_size,2)/=1) print *,11004
if (lbound(assumed_shape,1)/=2) print *,21001
if (ubound(assumed_shape,1)/=3) print *,21002
if (lbound(assumed_shape,2)/=1) print *,21003
if (ubound(assumed_shape,2)/=3) print *,21004
if (any(assumed_size(:,:3)/=1)) print *,21005
if (any(assumed_shape(:,:)/=1)) print *,21006
if (this%x1/=1) print *,21007
if (this%x2/=2) print *,21008
    end subroutine
 end

use ext_mod
  class(base_type),allocatable  :: this
  integer,parameter::k=2
      real :: assumed_size(k,3)=1
      real :: assumed_shape(2:3,3)=1
allocate(this)
this%x1=1
call this%proc(assumed_shape,assumed_size,k)
deallocate(this)
allocate(ext_type::this)
this%x1=1
select type(this)
  type is(ext_type)
    this%x2=2
end select
call this%proc(assumed_shape,assumed_size,k)
rewind 1
read(1,*) n
if (n/=1) print *,3001
read(1,*) n
if (n/=2) print *,3002
        
print *,'sngg345m : pass'
end
