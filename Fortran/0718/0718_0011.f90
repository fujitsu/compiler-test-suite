module mod
  contains
  subroutine msub01(proc) bind(C)
    interface
      subroutine proc()
      end subroutine
    end interface
  end subroutine
  subroutine msub02(proc) bind(C)
    external :: proc
  end subroutine
end module
subroutine sub01(proc) bind(C)
  interface
    subroutine proc()
    end subroutine
  end interface
end subroutine
subroutine sub02(proc) bind(C)
  external :: proc
end subroutine
subroutine sub03() 
  entry ent03(proc) bind(C)
  external :: proc
end subroutine
subroutine sub04() 
  external :: proc
  entry ent04(proc) bind(C)
end subroutine
subroutine sub05() 
  interface
    subroutine proc()
    end subroutine
  end interface
  entry ent05(proc) bind(C)
end subroutine
end
