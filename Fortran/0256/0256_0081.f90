type ty
integer::aa(10)
end type ty
type(ty):: obj
obj%aa = reshape([1,2,3,4,5,6,7,8,9,10],[10])
call sub1(obj%aa)
if(obj%aa(1).ne.20)print*,"108",obj%aa
if(obj%aa(2).ne.2 )print*,"108",obj%aa
if(obj%aa(3).ne.20)print*,"108",obj%aa
if(obj%aa(4).ne.4 )print*,"108",obj%aa
if(obj%aa(5).ne.20)print*,"108"
if(obj%aa(6).ne.6 )print*,"108",obj%aa
if(obj%aa(7).ne.20)print*,"108"
if(obj%aa(8).ne.8 )print*,"108",obj%aa
if(obj%aa(9).ne.20)print*,"108"
if(obj%aa(10).ne.10)print*,"108",obj%aa
contains
subroutine sub1(dmy1)
 integer::dmy1(:)
call sub(dmy1(1:10:2))
end subroutine sub1
subroutine sub(dmy3)
integer,contiguous::dmy3(:)
if(is_contiguous(dmy3) .NEQV. .TRUE.)print*,"106"
dmy3 =20
print*,"PASS"
end subroutine sub
end
