end

subroutine sub01(proc) bind(c)
 interface
  function proc()
  end function
 end interface
 print *,proc()
end subroutine

subroutine sub02(proc) bind(c)
 procedure(real) :: proc
 print *,proc()
end subroutine

subroutine sub03(proc) bind(c)
 real,external :: proc
 print *,proc()
end subroutine

subroutine sub04(proc) bind(c)
 interface
  subroutine proc()
  end subroutine
 end interface
 call proc()
end subroutine

subroutine sub05(proc) bind(c)
 procedure() :: proc
 call proc()
end subroutine

subroutine sub06(proc) bind(c)
 external :: proc
 call proc()
end subroutine
