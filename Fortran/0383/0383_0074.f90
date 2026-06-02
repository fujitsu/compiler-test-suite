function proc02(arg1) result(ret)
  integer :: arg1(1)
  character(:),pointer :: ret(:)
  allocate(character(arg1(1))::ret(1))
  ret = "a"
end function

interface
  function proc01(arg1) result(ret)
    integer :: arg1(1)
    character(:),pointer :: ret(:)
  end function
  function proc02(arg1) result(ret)
    integer :: arg1(1)
    character(:),pointer :: ret(:)
  end function
end interface
procedure(proc01),pointer :: ppp
character(1) :: cha(1)
integer :: arg1(1) = 1
ppp=>proc02
cha = ppp(arg1)
if ( 'a' .ne. cha(1) )  print *,'fail'
print *,'ok'
end
