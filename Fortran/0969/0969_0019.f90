function proc01() result(ret)
  character(:),allocatable :: ret
  allocate(character(10)::ret)
  ret = '1234567890'
end function
interface
  function mdfnc() result(ret)
    character(:),allocatable :: ret
  end function
end interface
procedure(mdfnc) :: proc01
character(10) :: cha
cha = proc01()
print *,cha
end
