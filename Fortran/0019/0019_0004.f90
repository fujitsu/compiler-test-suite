module mod1 

implicit none

integer(kind=1) :: kk_1
integer(kind=2) :: kk_2
integer(kind=4) :: kk_4
integer(kind=8) :: kk_8

type ty10(ii)
integer(8),kind::ii=20
integer(8) :: array_8(ii)=(/(kk_8,kk_8=1,ii)/)
integer(4) :: array_4(ii)=(/(kk_4,kk_4=1,ii)/)
integer(2) :: array_2(ii)=(/(kk_2,kk_2=1,ii)/)
integer(1) :: array_1(ii)=(/(kk_1,kk_1=1,ii)/)
end type

end
use mod1
print*,"OK"
end

