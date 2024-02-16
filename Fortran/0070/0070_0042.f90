module m1
 type x
   integer::xxxx1
   integer,allocatable::x1(:)
   integer            ::x2(2)
   integer,pointer    ::x3(:)
   integer::xy1
 end type
 type y  
   type(x),allocatable:: y1(:)
   type(x)            :: y2(2)
   integer::xxxx1
   type(x),pointer    :: y3(:)
 end type
 type z  
   type(y),allocatable:: z1(:)
   type(y)            :: z2(2)
   integer::xxxx1
   type(y),allocatable:: z3(:)
 end type
   type(z),allocatable:: w1(:)
   type(z)            :: w2(2)
   type(z),allocatable:: w3(:)
contains
subroutine alc
allocate(w1(2))
allocate(w1(2)%z1(2))
allocate(w1(2)%z1(2)%y1(2))
allocate(w1(2)%z1(2)%y1(2)%x1(2))
allocate(w1(2)%z1(2)%y1(2)%x3(2))
allocate(w1(2)%z1(2)%y2(2)%x1(2))
allocate(w1(2)%z1(2)%y2(2)%x3(2))
allocate(w1(2)%z1(2)%y3(2))
allocate(w1(2)%z1(2)%y3(2)%x1(2))
allocate(w1(2)%z1(2)%y3(2)%x3(2))
allocate(w1(2)%z2(2)%y1(2))
allocate(w1(2)%z2(2)%y1(2)%x1(2))
allocate(w1(2)%z2(2)%y1(2)%x3(2))
allocate(w1(2)%z2(2)%y2(2)%x1(2))
allocate(w1(2)%z2(2)%y2(2)%x3(2))
allocate(w1(2)%z2(2)%y3(2))
allocate(w1(2)%z2(2)%y3(2)%x1(2))
allocate(w1(2)%z2(2)%y3(2)%x3(2))
allocate(w1(2)%z3(2))
allocate(w1(2)%z3(2)%y1(2))
allocate(w1(2)%z3(2)%y1(2)%x1(2))
allocate(w1(2)%z3(2)%y1(2)%x3(2))
allocate(w1(2)%z3(2)%y2(2)%x1(2))
allocate(w1(2)%z3(2)%y2(2)%x3(2))
allocate(w1(2)%z3(2)%y3(2))
allocate(w1(2)%z3(2)%y3(2)%x1(2))
allocate(w1(2)%z3(2)%y3(2)%x3(2))
allocate(w2(2)%z1(2))
allocate(w2(2)%z1(2)%y1(2))
allocate(w2(2)%z1(2)%y1(2)%x1(2))
allocate(w2(2)%z1(2)%y1(2)%x3(2))
allocate(w2(2)%z1(2)%y2(2)%x1(2))
allocate(w2(2)%z1(2)%y2(2)%x3(2))
allocate(w2(2)%z1(2)%y3(2))
allocate(w2(2)%z1(2)%y3(2)%x1(2))
allocate(w2(2)%z1(2)%y3(2)%x3(2))
allocate(w2(2)%z2(2)%y1(2))
allocate(w2(2)%z2(2)%y1(2)%x1(2))
allocate(w2(2)%z2(2)%y1(2)%x3(2))
allocate(w2(2)%z2(2)%y2(2)%x1(2))
allocate(w2(2)%z2(2)%y2(2)%x3(2))
allocate(w2(2)%z2(2)%y3(2))
allocate(w2(2)%z2(2)%y3(2)%x1(2))
allocate(w2(2)%z2(2)%y3(2)%x3(2))
allocate(w2(2)%z3(2))
allocate(w2(2)%z3(2)%y1(2))
allocate(w2(2)%z3(2)%y1(2)%x1(2))
allocate(w2(2)%z3(2)%y1(2)%x3(2))
allocate(w2(2)%z3(2)%y2(2)%x1(2))
allocate(w2(2)%z3(2)%y2(2)%x3(2))
allocate(w2(2)%z3(2)%y3(2))
allocate(w2(2)%z3(2)%y3(2)%x1(2))
allocate(w2(2)%z3(2)%y3(2)%x3(2))
allocate(w3(2))
allocate(w3(2)%z1(2))
allocate(w3(2)%z1(2)%y1(2))
allocate(w3(2)%z1(2)%y1(2)%x1(2))
allocate(w3(2)%z1(2)%y1(2)%x3(2))
allocate(w3(2)%z1(2)%y2(2)%x1(2))
allocate(w3(2)%z1(2)%y2(2)%x3(2))
allocate(w3(2)%z1(2)%y3(2))
allocate(w3(2)%z1(2)%y3(2)%x1(2))
allocate(w3(2)%z1(2)%y3(2)%x3(2))
allocate(w3(2)%z2(2)%y1(2))
allocate(w3(2)%z2(2)%y1(2)%x1(2))
allocate(w3(2)%z2(2)%y1(2)%x3(2))
allocate(w3(2)%z2(2)%y2(2)%x1(2))
allocate(w3(2)%z2(2)%y2(2)%x3(2))
allocate(w3(2)%z2(2)%y3(2))
allocate(w3(2)%z2(2)%y3(2)%x1(2))
allocate(w3(2)%z2(2)%y3(2)%x3(2))
allocate(w3(2)%z3(2))
allocate(w3(2)%z3(2)%y1(2))
allocate(w3(2)%z3(2)%y1(2)%x1(2))
allocate(w3(2)%z3(2)%y1(2)%x3(2))
allocate(w3(2)%z3(2)%y2(2)%x1(2))
allocate(w3(2)%z3(2)%y2(2)%x3(2))
allocate(w3(2)%z3(2)%y3(2))
allocate(w3(2)%z3(2)%y3(2)%x1(2))
allocate(w3(2)%z3(2)%y3(2)%x3(2))
end subroutine
end
module m2
use m1,only:ww2=>w2,ww3=>w3,ww1=>w1
end
subroutine s1
use m1
use m2
call alc
w2(2)%z1(2)%y1(2)%x1(2)=0
ww2(2)%z1(2)%y1(2)%x1(2)=1
ww2(2)%z1(2)%y1(2)%x1(2)=w2(2)%z1(2)%y1(2)%x1(2)+1
if (w2(2)%z1(2)%y1(2)%x1(2)/=2) print *,101
if (ww2(2)%z1(2)%y1(2)%x1(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y1(2)%x1(2),1)
call ss1(ww2(2)%z1(2)%y1(2)%x1(2),2)
w2(2)%z1(2)%y1(2)%x2(2)=0
ww2(2)%z1(2)%y1(2)%x2(2)=1
ww2(2)%z1(2)%y1(2)%x2(2)=w2(2)%z1(2)%y1(2)%x2(2)+1
if (w2(2)%z1(2)%y1(2)%x2(2)/=2) print *,101
if (ww2(2)%z1(2)%y1(2)%x2(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y1(2)%x2(2),1)
call ss1(ww2(2)%z1(2)%y1(2)%x2(2),2)
w2(2)%z1(2)%y1(2)%x3(2)=0
ww2(2)%z1(2)%y1(2)%x3(2)=1
ww2(2)%z1(2)%y1(2)%x3(2)=w2(2)%z1(2)%y1(2)%x3(2)+1
if (w2(2)%z1(2)%y1(2)%x3(2)/=2) print *,101
if (ww2(2)%z1(2)%y1(2)%x3(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y1(2)%x3(2),1)
call ss1(ww2(2)%z1(2)%y1(2)%x3(2),2)
w2(2)%z1(2)%y2(2)%x1(2)=0
ww2(2)%z1(2)%y2(2)%x1(2)=1
ww2(2)%z1(2)%y2(2)%x1(2)=w2(2)%z1(2)%y2(2)%x1(2)+1
if (w2(2)%z1(2)%y2(2)%x1(2)/=2) print *,101
if (ww2(2)%z1(2)%y2(2)%x1(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y2(2)%x1(2),1)
call ss1(ww2(2)%z1(2)%y2(2)%x1(2),2)
call ss2(w2(2)%z1(2),1)
call ss2(ww2(2)%z1(2),2)
w2(2)%z1(2)%y2(2)%x2(2)=0
ww2(2)%z1(2)%y2(2)%x2(2)=1
ww2(2)%z1(2)%y2(2)%x2(2)=w2(2)%z1(2)%y2(2)%x2(2)+1
if (w2(2)%z1(2)%y2(2)%x2(2)/=2) print *,101
if (ww2(2)%z1(2)%y2(2)%x2(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y2(2)%x2(2),1)
call ss1(ww2(2)%z1(2)%y2(2)%x2(2),2)
w2(2)%z1(2)%y2(2)%x3(2)=0
ww2(2)%z1(2)%y2(2)%x3(2)=1
ww2(2)%z1(2)%y2(2)%x3(2)=w2(2)%z1(2)%y2(2)%x3(2)+1
if (w2(2)%z1(2)%y2(2)%x3(2)/=2) print *,101
if (ww2(2)%z1(2)%y2(2)%x3(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y2(2)%x3(2),1)
call ss1(ww2(2)%z1(2)%y2(2)%x3(2),2)
w2(2)%z1(2)%y3(2)%x1(2)=0
ww2(2)%z1(2)%y3(2)%x1(2)=1
ww2(2)%z1(2)%y3(2)%x1(2)=w2(2)%z1(2)%y3(2)%x1(2)+1
if (w2(2)%z1(2)%y3(2)%x1(2)/=2) print *,101
if (ww2(2)%z1(2)%y3(2)%x1(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y3(2)%x1(2),1)
call ss1(ww2(2)%z1(2)%y3(2)%x1(2),2)
w2(2)%z1(2)%y3(2)%x2(2)=0
ww2(2)%z1(2)%y3(2)%x2(2)=1
ww2(2)%z1(2)%y3(2)%x2(2)=w2(2)%z1(2)%y3(2)%x2(2)+1
if (w2(2)%z1(2)%y3(2)%x2(2)/=2) print *,101
if (ww2(2)%z1(2)%y3(2)%x2(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y3(2)%x2(2),1)
call ss1(ww2(2)%z1(2)%y3(2)%x2(2),2)
w2(2)%z1(2)%y3(2)%x3(2)=0
ww2(2)%z1(2)%y3(2)%x3(2)=1
ww2(2)%z1(2)%y3(2)%x3(2)=w2(2)%z1(2)%y3(2)%x3(2)+1
if (w2(2)%z1(2)%y3(2)%x3(2)/=2) print *,101
if (ww2(2)%z1(2)%y3(2)%x3(2)/=2) print *,101
call ss1(w2(2)%z1(2)%y3(2)%x3(2),1)
call ss1(ww2(2)%z1(2)%y3(2)%x3(2),2)

contains
subroutine ss2(k,kk)
type(y)::k
if (kk==1) then
 if (k%y2(2)%x1(2)/=4) print *,303
else
 if (k%y2(2)%x1(2)/=5) print *,304
endif
k%y2(2)%x1(2)= k%y2(2)%x1(2)+1
end subroutine
subroutine ss1(k,kk)
if (kk==1) then
 if (k/=2) print *,301
else
 if (k/=3) print *,302
endif
k=k+1
end subroutine
end
call s1
print *,'pass'
end
