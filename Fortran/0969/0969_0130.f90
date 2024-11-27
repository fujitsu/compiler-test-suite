intrinsic          :: int
integer, parameter :: ii_pa01 = 4
integer, pointer   :: p

print *,int(ii_pa01)

p => null()
call csub01(null())

contains
 subroutine csub01(cs01_arg01)
  integer , pointer :: cs01_arg01
 end subroutine
end
