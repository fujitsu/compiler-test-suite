subroutine exsub1(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),optional,bind(C) :: arg1
end 
subroutine exsub2(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),optional,bind(C) :: arg1
end 
subroutine exsub3(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),optional :: arg1
end 
subroutine exsub4(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C),optional :: arg1
end
subroutine exsub5(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  optional :: arg1
  procedure(sub),bind(C) :: arg1
end 
subroutine exsub6(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  optional :: arg1
  procedure(sub),bind(C) :: arg1
end 
subroutine exsub7(arg1) bind(C)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: arg1
  optional :: arg1
end 
subroutine exsub8(arg1)
  interface
    subroutine sub() bind(C)
    end subroutine
  end interface
  procedure(sub),bind(C) :: arg1
  optional :: arg1
end
end
