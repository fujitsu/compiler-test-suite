module m
  type ty
  contains
    procedure,nopass :: prc
  end type

  type ty2
    type(ty) :: t
  end type
  type(ty2) :: x
contains
  subroutine sub
    call x%t%prc
  end subroutine
  subroutine prc
  end subroutine
end

print *,'pass'
end
