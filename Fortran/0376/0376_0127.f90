module m1
 type a
   sequence
   integer(8)::x1
   character(:),pointer::ps
   character(:),pointer::pa(:,:,:)
   integer(8)::x2
 end type
 character(1),target::t(2,3,4)=reshape((/('1',i=1,23),'2'/),(/2,3,4/))
 integer::i2=2
contains
subroutine s2(pa)
type w
sequence
character(:),pointer::ps1,pa1(:,:,:)
character(:),pointer::ps2,pa2(:,:,:)
type(a)::vs1,va1(2)
type(a),pointer::vs2,va2(:)
type(a)::vs3,va3(2)
type(a),pointer::vs4,va4(:)
end type
type(w)::pa(:)
pa(i2)%ps1=>t(2,3,4)
pa(i2)%ps1=> pa(i2)%ps1
if (len(pa(i2)%ps1)/=1)call err(1001)
if (pa(i2)%ps1/='2')call err(1002)
end subroutine
end
use  m1
type w
  sequence
  character(:),pointer::ps1,pa1(:,:,:)
  character(:),pointer::ps2,pa2(:,:,:)
  type(a)::vs1,va1(2)
  type(a),pointer::vs2,va2(:)
  type(a)::vs3,va3(2)
  type(a),pointer::vs4,va4(:)
end type
type(w)::pa(2)
call s2(pa)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end

