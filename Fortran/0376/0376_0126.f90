module m1
 type a
   integer(8)::x1
   character(:),pointer::ps
   character(:),pointer::pa(:,:,:)
   integer(8)::x2
 end type
 character(1),target::t(2,3,4)=reshape((/('1',i=1,23),'2'/),(/2,3,4/))
 integer::i2=2
contains
subroutine s1(vs2)
character(:),pointer::pa2(:,:,:)
type(a),pointer::vs2
pa2=>t(:,:,:)
vs2%pa=>pa2
if (len(vs2%pa)/=1)call err(2031)
if (vs2%pa(2,3,4)/=t(2,3,4))call err(2032)
end subroutine
end
use  m1
type(a),pointer::vs2
allocate(vs2)
call s1(vs2)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

