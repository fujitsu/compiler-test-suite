module m1
 type a
   integer::x
 end type
 type b
   integer::x
 end type
 type c
   integer::x
 end type
 type(a)::a1
 type(b)::b1
 type(c)::c1
end
use m1,only:a1,c1
 type a
   character::x
 end type
 type b
   character::x
 end type
 type c
   character::x
 end type

call t(a1,c1)
call s(a1,c1)
print *,'sngg418h : pass'
end
subroutine s(aa,cc)
use m1
 type(a)::aa
 type(c)::cc
if (aa%x/=1) print *,101
if (cc%x/=3) print *,103
end
subroutine t(aa,cc)
use m1
 type(a)::aa
 type(c)::cc
aa%x=1
cc%x=3
end
