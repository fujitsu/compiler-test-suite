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
subroutine s1(ps1,pa1,vs1,va1,vs2,va2)
character(:),pointer::ps1,pa1(:,:,:)
character(:),pointer::ps2,pa2(:,:,:)
type(a)::vs1,va1(:)
type(a),pointer::vs2,va2(:)
type(a)::vs3,va3(2)
type(a),pointer::vs4,va4(:)
allocate(vs4,va4(2))
pa2=>t(:,:,:)
vs2%pa=>pa2
if (len(vs2%pa)/=1)call err(2031)
if (any(vs2%pa/=t))call err(2032)
if (any(shape(vs2%pa)/=(/2,3,4/)))call err(2033)
end subroutine
end
use  m1
character(:),pointer::ps1,pa1(:,:,:)
type(a)::vs1,va1(2)
type(a),pointer::vs2,va2(:)
type w
character(:),pointer::ps1,pa1(:,:,:)
character(:),pointer::ps2,pa2(:,:,:)
type(a)::vs1,va1(2)
type(a),pointer::vs2,va2(:)
type(a)::vs3,va3(2)
type(a),pointer::vs4,va4(:)
end type
type(w)::pa(2)
allocate(vs2,va2(2))
call s1(ps1,pa1,vs1,va1,vs2,va2)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

