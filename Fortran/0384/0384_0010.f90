call test01()
print *,"pass"
end

module mod01
common /com1/ i
namelist /com2/ ii
bind(c) :: /com1/
bind(c) :: ii
contains
subroutine sss()
namelist /com3/ iia
write(6,nml=com2)
write(6,nml=com3)
end subroutine
end

subroutine test01()
use mod01
namelist /com3/ iia
if (1.eq.2) write(6,nml=com2)
if (1.eq.2) write(6,nml=com3)
end 
