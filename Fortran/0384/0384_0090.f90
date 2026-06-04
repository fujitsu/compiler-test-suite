call test01()
call test02()
call test03()
print *,"pass"
end

function ifun()
ifun=1
end
subroutine test01()
  use,intrinsic :: iso_c_binding
  character(len=2),target :: cha1
  common /c_f_procpointer/ iii
  procedure(),pointer :: ip
  type(c_funptr) :: c
  integer,external :: ifun
  ip=>ifun
  c=c_funloc(ip)
  call c_f_procpointer(c,ip)
end

subroutine test02()
  use,intrinsic :: iso_c_binding
  common /c_f_procpointer/ iii
  character(len=2),target :: cha1
  procedure(),pointer :: ip
  type(c_funptr) :: c
  integer,external :: ifun
  ip=>ifun
  c=c_funloc(ip)
  call c_f_procpointer(c,ip)
end

subroutine test03()
  use,intrinsic :: iso_c_binding
  procedure(),pointer :: ip
  type(c_funptr) :: c
  integer,external :: ifun
  ip=>ifun
  c=c_funloc(ip)
  call c_f_procpointer(c,ip)
contains
 subroutine c_f_procpointer_a()
  interface c_f_procpointer
    subroutine c_f_procpointer()
    end subroutine
  end interface
 end subroutine
end
