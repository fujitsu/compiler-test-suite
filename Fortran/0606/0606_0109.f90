module mod1
  type :: ty0
   integer :: ii = 0
   integer :: jj = 0
   contains
     procedure :: assigned
     generic   :: assignment(=) => assigned
  end type ty0
  public :: ty0
contains
  subroutine assigned (this, that)
    class(ty0), intent(inout) :: this
    class(ty0), intent(in)    :: that
    this%ii = that%ii
    print*, "assign call"
  end subroutine assigned
end module mod1

module mod2
  use mod1
  type :: ty1
     class(ty0), pointer :: gr
  end type ty1
contains
  subroutine init_params (this)
    class(ty1) :: this
    type(ty0)               :: gr
    gr%ii=20
    call init_comps(this, gr)
  end subroutine init_params
  subroutine init_comps (this, gr)
    class(ty1) :: this
    class(ty0), intent(in)  :: gr
    this%gr = gr
    if(this%gr%ii .NE. 20) print*, "Error"
    print*, 'pass'
  end subroutine init_comps
end module mod2 

use mod2
type(ty1) :: obj 
type(ty0), target :: tr
tr%ii=200
obj%gr => tr
call init_params(obj)
end
