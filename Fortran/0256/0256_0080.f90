type ty
integer :: ii = 5
integer::aa
end type ty
type(ty):: obj(10)

do ii=1,10
obj(ii)%aa = ii
end do
call sub1(obj(1:10:2))
if(obj(1)%aa.ne.20)print*,"108"
if(obj(3)%aa.ne.20)print*,"108"
if(obj(5)%aa.ne.20)print*,"108"
if(obj(7)%aa.ne.20)print*,"108"
if(obj(9)%aa.ne.20)print*,"108"
contains
subroutine sub1(dmy1)
 type(ty) :: dmy1(:)
call sub(dmy1%aa)
end subroutine sub1
subroutine sub(dmy3)
integer,contiguous::dmy3(:)
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"
dmy3 =20
print*,"PASS"
end subroutine sub
end
