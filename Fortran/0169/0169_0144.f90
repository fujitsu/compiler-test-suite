module m
  private
  public sms
  integer a1,a2,a3
  character(4)::ch
  namelist/nam/ch
  parameter(a2=10)
  type ty
    integer i,j
  end type 
  type(ty) :: a4
  interface ext
    integer function ext1(i)
      integer i
    end function
    integer function ext2(r)
      real r
    end function
  end interface
  interface
    module subroutine sms
    end subroutine
  end interface
end module m

submodule(m)sm
contains
  module subroutine sms
    if(a2/=10) print *,"a2",a2
  end subroutine sms
end submodule
  
use m
integer a1,a2,a3
character(4)::ch
namelist/nam/ch
parameter(a2=5)
type ty
  integer i,j
end type 
type(ty) :: a4
interface ext
  integer function ext1(i)
    integer i
  end function
  integer function ext2(r)
    real r
  end function
end interface
call sms
print *,'pass'
end


integer function ext1(i)
  integer i
  ext1=11
end

integer function ext2(r)
  real r
  ext2=22
end
