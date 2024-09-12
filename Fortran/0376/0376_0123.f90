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
subroutine s1(ps1,pa1,vs1,va1,vs2,va2)
character(:),pointer::ps1,pa1(:,:,:)
character(:),pointer::ps2,pa2(:,:,:)
type(a)::vs1,va1(:)
type(a),pointer::vs2,va2(:)
type(a)::vs3,va3(2)
type(a),pointer::vs4,va4(:)
allocate(vs4,va4(2))
ps1=>t(2,3,4)
ps1=>ps1
if (len(ps1)/=1)call err(1001)
if (ps1/='2')call err(1002)
ps2=>ps1
if (len(ps2)/=1)call err(1011)
if (ps2/='2')call err(1012)
vs1%ps=>ps1
if (len(vs1%ps)/=1)call err(1021)
if (vs1%ps/='2')call err(1022)
vs2%ps=>ps1
if (len(vs2%ps)/=1)call err(1031)
if (vs2%ps/='2')call err(1032)
vs3%ps=>ps1
if (len(vs3%ps)/=1)call err(1033)
if (vs3%ps/='2')call err(1034)
vs4%ps=>ps1
if (len(vs4%ps)/=1)call err(1043)
if (vs4%ps/='2')call err(1044)
va1(i2)%ps=>ps1
if (len(va1(i2)%ps)/=1)call err(1041)
if (va1(i2)%ps/='2')call err(1042)
va2(i2)%ps=>ps1
if (len(va2(i2)%ps)/=1)call err(1041)
if (va2(i2)%ps/='2')call err(1042)
va3(i2)%ps=>ps1
if (len(va3(i2)%ps)/=1)call err(1051)
if (va3(i2)%ps/='2')call err(1052)
va4(i2)%ps=>ps1
if (len(va4(i2)%ps)/=1)call err(1061)
if (va4(i2)%ps/='2')call err(1062)

pa1=>t(:,:,:)
pa1=>pa1
if (len(pa1)/=1)call err(2001)
if (any(pa1/=t))call err(2002)
if (any(shape(pa1)/=(/2,3,4/)))call err(2003)
pa2=>pa1
if (len(pa2)/=1)call err(2011)
if (any(pa2/=t))call err(2012)
if (any(shape(pa2)/=(/2,3,4/)))call err(2013)
vs1%pa=>pa2
if (len(vs1%pa)/=1)call err(2021)
if (any(vs1%pa/=t))call err(2022)
if (any(shape(vs1%pa)/=(/2,3,4/)))call err(2023)
vs2%pa=>pa2
if (len(vs2%pa)/=1)call err(2031)
if (any(vs2%pa/=t))call err(2032)
if (any(shape(vs2%pa)/=(/2,3,4/)))call err(2033)
vs3%pa=>pa2
if (len(vs3%pa)/=1)call err(2041)
if (any(vs3%pa/=t))call err(2042)
if (any(shape(vs3%pa)/=(/2,3,4/)))call err(2043)
vs4%pa=>pa2
if (len(vs4%pa)/=1)call err(2081)
if (any(vs4%pa/=t))call err(2082)
if (any(shape(vs4%pa)/=(/2,3,4/)))call err(2083)
va1(i2)%pa=>pa2
if (len(va1(i2)%pa)/=1)call err(2051)
if (any(va1(i2)%pa/=t))call err(2052)
if (any(shape(va1(i2)%pa)/=(/2,3,4/)))call err(2053)
va2(i2)%pa=>pa2
if (len(va2(i2)%pa)/=1)call err(2061)
if (any(va2(i2)%pa/=t))call err(2062)
if (any(shape(va2(i2)%pa)/=(/2,3,4/)))call err(2063)
va3(i2)%pa=>pa2
if (len(va3(i2)%pa)/=1)call err(2071)
if (any(va3(i2)%pa/=t))call err(2072)
if (any(shape(va3(i2)%pa)/=(/2,3,4/)))call err(2073)
va4(i2)%pa=>pa2
if (len(va4(i2)%pa)/=1)call err(2081)
if (any(va4(i2)%pa/=t))call err(2082)
if (any(shape(va4(i2)%pa)/=(/2,3,4/)))call err(2083)
end subroutine
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
allocate(pa(2)%vs4,pa(2)%va4(2))
allocate(pa(i2)%vs2,pa(i2)%va2(2))
pa(i2)%ps1=>t(2,3,4)
pa(i2)%ps1=> pa(i2)%ps1
if (len(pa(i2)%ps1)/=1)call err(1001)
if (pa(i2)%ps1/='2')call err(1002)
pa(i2)%ps2=>pa(i2)%ps1
if (len(pa(i2)%ps2)/=1)call err(1011)
if (pa(i2)%ps2/='2')call err(1012)
pa(i2)%vs1%ps=>pa(i2)%ps1
if (len(pa(i2)%vs1%ps)/=1)call err(1021)
if (pa(i2)%vs1%ps/='2')call err(1022)
pa(i2)%vs2%ps=>pa(i2)%ps1
if (len(pa(i2)%vs2%ps)/=1)call err(1031)
if (pa(i2)%vs2%ps/='2')call err(1032)
pa(i2)%vs3%ps=>pa(i2)%ps1
if (len(pa(i2)%vs3%ps)/=1)call err(1033)
if (pa(i2)%vs3%ps/='2')call err(1034)
pa(i2)%vs4%ps=>pa(i2)%ps1
if (len(pa(i2)%vs4%ps)/=1)call err(1043)
if (pa(i2)%vs4%ps/='2')call err(1044)
pa(i2)%va1(i2)%ps=>pa(i2)%ps1
if (len(pa(i2)%va1(i2)%ps)/=1)call err(1041)
if (pa(i2)%va1(i2)%ps/='2')call err(1042)
pa(i2)%va2(i2)%ps=>pa(i2)%ps1
if (len(pa(i2)%va2(i2)%ps)/=1)call err(1041)
if (pa(i2)%va2(i2)%ps/='2')call err(1042)
pa(i2)%va3(i2)%ps=>pa(i2)%ps1
if (len(pa(i2)%va3(i2)%ps)/=1)call err(1051)
if (pa(i2)%va3(i2)%ps/='2')call err(1052)
pa(i2)%va4(i2)%ps=>pa(i2)%ps1
if (len(pa(i2)%va4(i2)%ps)/=1)call err(1061)
if (pa(i2)%va4(i2)%ps/='2')call err(1062)

pa(i2)%pa1=>t(:,:,:)
pa(i2)%pa1=> pa(i2)%pa1
if (len(pa(i2)%pa1)/=1)call err(2001)
if (any(pa(i2)%pa1/=t))call err(2002)
if (any(shape(pa(i2)%pa1)/=(/2,3,4/)))call err(2003)
pa(i2)%pa2=>pa(i2)%pa1
if (len(pa(i2)%pa2)/=1)call err(2011)
if (any(pa(i2)%pa2/=t))call err(2012)
if (any(shape(pa(i2)%pa2)/=(/2,3,4/)))call err(2013)
pa(i2)%vs1%pa=>pa(i2)%pa1
if (len(pa(i2)%vs1%pa)/=1)call err(2021)
if (any(pa(i2)%vs1%pa/=t))call err(2022)
if (any(shape(pa(i2)%vs1%pa)/=(/2,3,4/)))call err(2023)
pa(i2)%vs2%pa=>pa(i2)%pa1
if (len(pa(i2)%vs2%pa)/=1)call err(2031)
if (any(pa(i2)%vs2%pa/=t))call err(2032)
if (any(shape(pa(i2)%vs2%pa)/=(/2,3,4/)))call err(2033)
pa(i2)%vs3%pa=>pa(i2)%pa1
if (len(pa(i2)%vs3%pa)/=1)call err(2041)
if (any(pa(i2)%vs3%pa/=t))call err(2042)
if (any(shape(pa(i2)%vs3%pa)/=(/2,3,4/)))call err(2043)
pa(i2)%vs4%pa=>pa(i2)%pa1
if (len(pa(i2)%vs4%pa)/=1)call err(2081)
if (any(pa(i2)%vs4%pa/=t))call err(2082)
if (any(shape(pa(i2)%vs4%pa)/=(/2,3,4/)))call err(2083)
pa(i2)%va1(i2)%pa=>pa(i2)%pa1
if (len(pa(i2)%va1(i2)%pa)/=1)call err(2051)
if (any(pa(i2)%va1(i2)%pa/=t))call err(2052)
if (any(shape(pa(i2)%va1(i2)%pa)/=(/2,3,4/)))call err(2053)
pa(i2)%va2(i2)%pa=>pa(i2)%pa1
if (len(pa(i2)%va2(i2)%pa)/=1)call err(2061)
if (any(pa(i2)%va2(i2)%pa/=t))call err(2062)
if (any(shape(pa(i2)%va2(i2)%pa)/=(/2,3,4/)))call err(2063)
pa(i2)%va3(i2)%pa=>pa(i2)%pa1
if (len(pa(i2)%va3(i2)%pa)/=1)call err(2071)
if (any(pa(i2)%va3(i2)%pa/=t))call err(2072)
if (any(shape(pa(i2)%va3(i2)%pa)/=(/2,3,4/)))call err(2073)
pa(i2)%va4(i2)%pa=>pa(i2)%pa1
if (len(pa(i2)%va4(i2)%pa)/=1)call err(2081)
if (any(pa(i2)%va4(i2)%pa/=t))call err(2082)
if (any(shape(pa(i2)%va4(i2)%pa)/=(/2,3,4/)))call err(2083)
end subroutine
end
use  m1
character(:),pointer::ps1,pa1(:,:,:)
type(a)::vs1,va1(2)
type(a),pointer::vs2,va2(:)
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
allocate(vs2,va2(2))
call s1(ps1,pa1,vs1,va1,vs2,va2)
call s2(pa)
print *,'pass'
end
subroutine err(i)
print *,'error',i
end
