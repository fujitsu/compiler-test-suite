subroutine sub01()  bind(C)
  interface
    subroutine intsub01() bind(C)
    end subroutine
    subroutine intsub02() bind(C)
    end subroutine
  end interface
  entry ent01() bind(C)
!$pragma c(sub01)
!$pragma c(intsub01)
!$pragma c(intsub02)
!$pragma c(ent01)
end subroutine

function func01()  bind(C)
  interface
    function intfunc01() bind(C)
    end function
    function intfunc02() bind(C)
    end function
  end interface
  entry ent02() bind(C)
!$pragma c(func01)
!$pragma c(intfunc01)
!$pragma c(intfunc02)
!$pragma c(ent02)
end function

function func02()  bind(C) result(ret)
  interface
    function intfunc03() bind(C) result(ret)
    end function
    function intfunc04() bind(C) result(ret)
    end function
  end interface
  entry ent03() bind(C) result(ret)
!$pragma c(func02)
!$pragma c(intfunc03)
!$pragma c(intfunc04)
!$pragma c(ent03)
end function
end
