interface isub
 subroutine isub01(is01_arg01)
  character(:), pointer     :: is01_arg01
 end subroutine
 subroutine isub02(is02_arg01)
  character(:), allocatable :: is02_arg01(:)
 end subroutine
 subroutine isub03(is01_arg01)
  character(:), pointer     :: is01_arg01(:)
 end subroutine
end interface

character(:), pointer :: ch01_pp01(:)
character(:), pointer :: ch01_pp02
character(4), target  :: ch01_ta01(4)='1234'

ch01_pp01 => ch01_ta01
call isub(ch01_pp01)
ch01_pp02 => ch01_ta01(4)
ch01_ta01(4)='abcd'
call isub(ch01_pp02)
print *,'pass'

end

 subroutine isub01(is01_arg01)
  character(:), pointer     :: is01_arg01
  if (is01_arg01/='abcd') print *,201
 end subroutine
 subroutine isub02(is02_arg01)
  character(:), allocatable :: is02_arg01(:)
 end subroutine
 subroutine isub03(is01_arg01)
  character(:), pointer     :: is01_arg01(:)
  if (any(is01_arg01/='1234')) print *,202
 end subroutine
