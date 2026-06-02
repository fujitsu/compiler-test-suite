module base_mod
  type::base_type
   contains
    procedure:: proc=>base_proc
  end type
   contains
    subroutine base_proc(this, assumed_shape,assumed_size,k)
      class(base_type)  :: this
      real :: assumed_size(k,*)
      real :: assumed_shape(2:,:)
    end subroutine
end
module ext_mod
  use base_mod
  type, extends(base_type) :: ext_type
   contains
     procedure :: proc
  end type 
  contains
    subroutine proc(this, assumed_shape,assumed_size,k)
      class(ext_type)  :: this
      real :: assumed_size(k,*)
      real :: assumed_shape(2:,:)
    end subroutine
 end





use ext_mod
print *,'sngg342m : pass'
end
