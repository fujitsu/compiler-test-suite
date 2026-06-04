module mod
  type ty1
     private
     integer::ia(3) = (/1,2,3/)
     integer::ib(3) = (/4,5,6/)
  end type ty1
  type(ty1)::inty
  public
  integer :: xx = 10
  interface write(formatted)
    procedure print_ty1
  end interface
contains
  subroutine print_ty1 (a, b, c, d, e, f)
    class(ty1),   intent(in   ) :: a
    integer,      intent(in   ) :: b
    character(*), intent(in   ) :: c
    integer,      intent(in   ) :: d(:)
    integer,      intent(  out) :: e
    character(*), intent(inout) :: f
    print *, a%ia, a%ib
  end subroutine print_ty1
  subroutine sub ()
    print *, inty%ia(1)
  end subroutine sub

end module

use mod
  print *, inty

  print *, xx
  call sub()
end
