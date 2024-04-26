module mod
  type y0
    integer :: i=3
  end type
  type,extends(y0)::y1
    integer :: k=100
  end type
  type,extends(y1)::ty
    integer :: kk=100
  end type
  type(ty) :: y

  interface
    module subroutine sub(bb)
      integer :: bb(y%y1%i)
    end subroutine
  end interface
end

print *,'pass'
end
