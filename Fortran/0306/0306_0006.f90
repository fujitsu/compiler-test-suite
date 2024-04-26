subroutine test01()
  type ty1
  end type ty1

  type ty2
     type(ty1) :: str
  end type ty2
  type (ty2) ::s
  parameter (s=ty2(ty1()))
end subroutine test01

program main
  print *, "OK"
end program main
