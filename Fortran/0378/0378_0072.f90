integer,parameter :: ip = 4
character(ip) :: cc(0)
integer :: i(0)

kp=4
if (len( [character(kp) :: ] )/=ip)print *,ip

call c_sub(ip)
print *,'pass'

contains
 subroutine c_sub(dummy_i4)
  integer :: dummy_i4
  character(dummy_i4) :: cc(0)
  cc = [character(dummy_i4) :: ]
 end subroutine
end
