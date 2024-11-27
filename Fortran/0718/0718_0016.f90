!$pragma c(sub01)
!$pragma c(intsub01) 
!$pragma c(ent01)
subroutine sub01() bind(C)
  interface
    subroutine intsub01() bind(C)
    end subroutine    
  end interface
  entry ent01() bind(C) 
end subroutine

!$pragma c(func02)
!$pragma c(intfunc02) 
!$pragma c(ent02)
function func02() bind(C)
  interface
    function intfunc02() bind(C)
    end function
  end interface
  integer :: ret
  entry ent02() bind(C)
end function

!$pragma c(func03)
!$pragma c(intfunc03) 
!$pragma c(ent03)
function func03() bind(C) result(ret)
  interface
    function intfunc03() bind(C)
    end function
  end interface
  integer :: ret
  entry ent03() bind(C) result(ret)
end function

end
