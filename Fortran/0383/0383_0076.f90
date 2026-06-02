function func01() result(ret)
  character(5),allocatable :: ret
  allocate(character(5)::ret)
  ret = '12345'
end function
function func02() result(ret)
  character(10),pointer :: ret
  allocate(character(10)::ret)
  ret = '1234567890'
end function 

module mod
  contains
  function proc01() result(ret)
    character(5),allocatable :: ret
    allocate(character(5)::ret)
    ret = '12345'
  end function 
  function proc02() result(ret)
    character(10),pointer :: ret
    allocate(character(10)::ret)
    ret = '1234567890'
  end function 
end module

use mod
interface
function func01() result(ret)
  character(5),allocatable :: ret
end function
function func02() result(ret)
  character(10),pointer :: ret
end function 
end interface
procedure(proc01),pointer :: ppp1
procedure(proc02),pointer :: ppp2
character(5),allocatable :: cha1
character(10),pointer :: cha2
ppp1=>func01
ppp2=>func02
allocate(character(5)::cha1)
cha1=ppp1()
cha2=>ppp2()
if ( "12345" .ne. cha1 ) print *,'fail'
if ( "1234567890" .ne. cha2 ) print *,'fail'
print *,'ok'
end
