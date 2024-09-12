Module m
interface gnr
subroutine sub1(dmy1)
integer :: dmy1
end subroutine
subroutine sub2(dmy2)
interface
subroutine s(d)
integer :: d
end subroutine
end interface
procedure(s) :: dmy2
end subroutine
end interface
interface
subroutine s(d)
integer :: d
end subroutine
end interface
end

use m
procedure(s),pointer :: prc
prc=>s
call gnr(5)
call gnr(prc)
print*,"pass"
end 

subroutine s(d)
integer :: d
d=d+1
if( d .ne. 6)print*,"102"
end subroutine

subroutine sub1(dmy1)
integer :: dmy1
if(dmy1 .ne. 5)print*,"101"
end subroutine
subroutine sub2(dmy2)
interface
subroutine s(d)
integer :: d
end subroutine
end interface
procedure(s) :: dmy2
integer :: a=5
call dmy2(a)
end subroutine
