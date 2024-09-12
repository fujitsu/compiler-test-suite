module m
  type ty
   contains
     procedure::wf
     generic::write(formatted)=>wf
  end type ty
  private ty
  interface
     module subroutine sub
     end subroutine sub
  end interface
contains
    subroutine wf(dtv, unit, iotype, v_list, iostat, iomsg)
    class(ty), intent(in) :: dtv
    integer, intent(in) :: unit
    character(*), intent(in) :: iotype
    integer, intent(in) :: v_list(:)
    integer, intent(out) :: iostat
    character(*), intent(inout) :: iomsg
end subroutine
end module m

submodule(m)smod
contains
  module subroutine sub
    write(1, *)ty()
  end subroutine sub
end submodule smod

use m
call sub
print *,'pass'
end
