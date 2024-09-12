procedure(sub),pointer :: prc
procedure(prc),pointer :: prc2
procedure(prc2),pointer :: prc3
procedure(prc3),pointer :: prc4
procedure(prc4) :: prc5
integer :: ii = 1
real :: jj = 2.2
integer :: kk = 3
real :: ll = 5
integer :: mm = 4
real :: nn = 6.0
integer :: dd = 13
real :: ee = 14
prc2=>sub2
prc3=>sub
prc4=>sub3
call prc2(ii,jj)
call prc3(kk,ll)
call prc4(mm,nn)
call prc5(dd,ee)
if(ii .ne. 3) print*,"121"
if(kk .ne. 7) print*,"122"
if(mm .ne. 14) print*,"123"
if(dd .ne. 19) print*,"124"
print*,"pass"
contains
subroutine sub(kk,ll)
integer :: kk
real :: ll
kk = ll + 2
end subroutine
subroutine sub2(ii,jj)
 integer :: ii
 real :: jj
 ii = ii + int(jj)
end subroutine
subroutine sub3(mm,nn)
integer :: mm
real :: nn
mm = nn + 8
end subroutine

function fun2()
 integer :: fun2
 fun2 = 10
 print*,"fun2"
end
end

subroutine prc5(dd,ee)
integer :: dd
real :: ee
dd = ee + 5
end subroutine
