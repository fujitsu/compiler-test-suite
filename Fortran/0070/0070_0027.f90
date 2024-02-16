module m1
 type x
   integer,allocatable::x1(:)
   integer            ::x2(2)
   integer,pointer    ::x3(:)
 end type
 type(x),allocatable:: a1(:)
 type(x)            :: a2(2)
 type(x),pointer    :: a3(:)
contains
subroutine alc
allocate(a1(1))
allocate(a1(1)%x1(2))
allocate(a1(1)%x3(2))
allocate(a2(1)%x1(2))
allocate(a2(1)%x3(2))
allocate(a3(1))
allocate(a3(1)%x1(2))
allocate(a3(1)%x3(2))
end subroutine
end
module m2
use m1,only:b1=>a1,b2=>a2,b3=>a3
end
subroutine s1(k1,k2)
use m1
use m2
call alc
do n=k1,k2
a1(1)%x1(1)=1
b1(1)%x1(1)=a1(1)%x1(1)+1
if (a1(1)%x1(1)/=2) print *,101
if (b1(1)%x1(1)/=2) print *,102
a1(1)%x2(1)=11
b1(1)%x2(1)=a1(1)%x2(1)+1
if (a1(1)%x2(1)/=12) print *,103
if (b1(1)%x2(1)/=12) print *,104
a1(1)%x3(1)=21
b1(1)%x3(1)=a1(1)%x3(1)+1
if (a1(1)%x3(1)/=22) print *,105
if (b1(1)%x3(1)/=22) print *,106

a2(1)%x1(1)=101
b2(1)%x1(1)=a2(1)%x1(1)+1
if (a2(1)%x1(1)/=102) print *,111
if (b2(1)%x1(1)/=102) print *,112
a2(1)%x2(1)=111
b2(1)%x2(1)=a2(1)%x2(1)+1
if (a2(1)%x2(1)/=112) print *,113
if (b2(1)%x2(1)/=112) print *,114
a2(1)%x3(1)=121
b2(1)%x3(1)=a2(1)%x3(1)+1
if (a2(1)%x3(1)/=122) print *,115
if (b2(1)%x3(1)/=122) print *,116

a3(1)%x1(1)=201
b3(1)%x1(1)=a3(1)%x1(1)+1
if (a3(1)%x1(1)/=202) print *,211
if (b3(1)%x1(1)/=202) print *,212
a3(1)%x2(1)=211
b3(1)%x2(1)=a3(1)%x2(1)+1
if (a3(1)%x2(1)/=212) print *,213
if (b3(1)%x2(1)/=212) print *,214
a3(1)%x3(1)=221
b3(1)%x3(1)=a3(1)%x3(1)+1
if (a3(1)%x3(1)/=222) print *,215
if (b3(1)%x3(1)/=222) print *,216
end do
end
call s1(1,5)
print *,'pass'
end
