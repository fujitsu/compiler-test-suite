subroutine exsub01(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),intent(in),bind(C),pointer :: arg1
end subroutine
subroutine exsub02(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  intent(in) :: arg1
  procedure(sub),bind(C),pointer :: arg1
end subroutine
subroutine exsub03(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),pointer :: arg1
  intent(in) :: arg1
end subroutine
subroutine exsub04(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  intent(in) :: arg1
  pointer :: arg1
  procedure(sub),bind(C) :: arg1
end subroutine
subroutine exsub05(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: arg1
  intent(in) :: arg1
  pointer :: arg1
end subroutine
subroutine exsub06(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  pointer :: arg1
  procedure(sub),bind(C),intent(in) :: arg1
end subroutine
subroutine exsub07(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),intent(in) :: arg1
  pointer :: arg1
end subroutine
end
