subroutine exsub1(arg1,arg2)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),intent(in),pointer,bind(C),optional :: arg1
  procedure(sub),intent(in),pointer,optional,bind(C) :: arg2
end subroutine
subroutine exsub2(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: arg1
  intent(in) :: arg1
  pointer :: arg1 
  optional :: arg1
end subroutine
subroutine exsub3(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  intent(in) :: arg1
  pointer :: arg1 
  optional :: arg1
  procedure(sub) :: arg1
end subroutine

print *,'ok'
end
