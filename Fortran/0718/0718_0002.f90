module mod
  contains
  subroutine msub() bind(C)
    contains
    subroutine msubsub() bind(C)
    end subroutine
  end subroutine
  function xfunc() bind(C)
    xfunc = 1
    contains
    function xfuncfunc() bind(C)
      xfuncfunc = 2
    end function
  end function
end module
subroutine sub() bind(C)
  contains
  subroutine subsub() bind(C)
  end subroutine
end subroutine
function func() bind(C)
  func = 1
  contains
  function funcfunc() bind(C)
    funcfunc = 2
  end function
end function
end
