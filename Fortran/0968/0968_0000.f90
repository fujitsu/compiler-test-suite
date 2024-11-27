interface
 function ifunc01() result(irst01)
  character(:), allocatable :: irst01
 end function
end interface

procedure(ifunc01) :: pifunc01
character(len = 4) :: ch01_01
ch01_01 = pifunc01()
print *,ch01_01
end

function pifunc01() result(pirst01)
  character(:), allocatable :: pirst01
  allocate(character(4) :: pirst01)
  pirst01 = 'pass'
end function
