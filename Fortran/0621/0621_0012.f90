function proc01() result(ret)
  character(:),allocatable :: ret(:)
  allocate(character(10)::ret(1))
  ret = '1234567890'
end function
function proc02() result(ret)
  character(:),pointer :: ret(:)
  allocate(character(10)::ret(1))
  ret = '2345678901'
end function
module mod01
  contains
  function func01() result(ret)
    character(:),allocatable :: ret(:)
  end function
  function func02() result(ret)
    character(:),pointer :: ret(:)
  end function
end module
use mod01
procedure(func01) :: proc01
procedure(func02) :: proc02
character(:),allocatable :: cha(:)
allocate(character(10)::cha(1))
cha = proc01()
if ( "1234567890" .ne. cha(1) ) print *,'fail'
cha = proc02()
if ( "2345678901" .ne. cha(1) ) print *,'fail'
print *,'ok'
end
