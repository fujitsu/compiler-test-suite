module base_mod                 ! 1)
  type::base_type               ! 2)
   contains
    procedure:: proc=>base_proc ! 3)
  end type
   contains
    subroutine base_proc(this, assumed_shape,assumed_size,k) ! 4-1-1), 4-2-1)
      class(base_type)  :: this
      real :: assumed_size(k,*)    ! 4-1-2), 4-1-3)
      real :: assumed_shape(2:,:)  ! 4-2-1), 4-2-3)
    end subroutine
end

module ext_mod                          ! 5)
  use base_mod
  type, extends(base_type) :: ext_type  ! 6), 7)
   contains
     procedure :: proc                  ! 8), 9)
  end type 
  contains
    subroutine proc(this, assumed_shape,assumed_size,k)      
      class(ext_type)  :: this
      real :: assumed_size(k,*)
      real :: assumed_shape(2:,:)
    end subroutine
 end





use ext_mod
print *,'sngg448m : pass'
end
