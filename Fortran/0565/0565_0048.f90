implicit none
integer :: k,m
type ty1
integer :: ii1
integer :: jjj
end type

type(ty1) ::obj0(3)
integer :: ss(3)

do k = 1,3
obj0(k)%ii1 = 20
obj0(k)%jjj = 30
end do

ss(1) = 1
ss(2) = 2
ss(3) = 3
call s1(obj0(ss))

if((obj0(1)%ii1 .ne. 20)) print *,202, obj0(1)%ii1
if((obj0(2)%jjj .ne. 30)) print *,203, obj0(2)%jjj

print *,"Pass"
contains
subroutine s1(dmy)
    type(ty1),value :: dmy(:)
    integer :: k,m
do k=1,3
    dmy(k)%ii1 = 40
    dmy(k)%jjj = 50

end do
end subroutine
end
