module typedef
  type ty
    integer :: i
  end type
  type(ty) :: x
end module

module mod
      use typedef
  interface
    module subroutine sub(a)
      integer :: a(x%i)
    end subroutine
  end interface
end

print *,'pass'
end
