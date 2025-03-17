module mod
integer :: ii=100
namelist/iii/ii
end module

module mod0
integer :: jj=100
namelist /jjj/jj
end module

module mod1
use mod,only:iii,ii
use mod0,only:jjj,jj
end module

module mod2
use mod1,only:jjj,jj
end module

module mod2a
 use mod1,only:jjj,jj
end module

program main
use mod2,only:jjj,jj
use mod2a,only:jjj,jj
write(1,jjj)
call chk
print *,'pass'
end
subroutine chk
namelist /jjj/jj
rewind 1
read(1,jjj)
if (jj/=100)write(6,*) "NG"
end


