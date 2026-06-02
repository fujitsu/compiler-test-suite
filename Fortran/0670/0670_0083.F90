#define n  npara
#define bbb aaa
#define bbb aaa
#define eq  wwwweq
#define ne  wwwwne
#define gt  wwwwgt
#define ge  wwwwge
#define le  wwwwle
#define lt  wwwwlt
#define and wwwwand
#define or  wwwwor
#define eqv  wwwweqv
#define neqv  wwwwneqv

module m1
interface operator(.wwwweq.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwne.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwle.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwgt.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwlt.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwor.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwand.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwweqv.)
  module procedure ii,ri,ir
end interface
interface operator(.wwwwneqv.)
  module procedure ii,ri,ir
end interface
contains
function ii(j1,j2)
 integer,intent(in)::j1,j2
 ii=j1+j2
end function
function ri(j1,j2)
 real   ,intent(in)::j1
 integer,intent(in)::j2
 ri=j1+j2
end function
function ir(j1,j2)
 real ir
 integer,intent(in)::j1
 real   ,intent(in)::j2
 ir=j1+j2
end function
end
use m1
parameter(n=4)
integer bbb
bbb=1
write(8,*)1.eq.bbb
write(8,*)1.0.eq.bbb
write(8,*)1.0_4.eq.bbb
write(8,*)1.0_n.eq.bbb
write(8,*)1_4.eq.bbb
write(8,*)bbb.eq.1
write(8,*)bbb.eq.1.0
write(8,*)bbb.eq.1.0_4
write(8,*)bbb.eq.1_4
write(8,*)bbb.eq.1.0_n

write(8,*)1_4.ne.bbb
write(8,*)1_4.gt.bbb
write(8,*)1_4.lt.bbb
write(8,*)1_4.le.bbb
write(8,*)1_4.le.2..and.1_4.eq.1
write(8,*)1_4.le.2..or.1_4.eq.1
write(8,*)1_4.le.2..eqv.1_4.eq.1
write(8,*)1_4.le.2..neqv.1_4.eq.1
call chk


print *,'pass'
end
subroutine chk
rewind 8
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) a;if (abs(a-2)>0.00001)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) i;if (i/=2)print *,'error-01'
read(8,*) a;if (abs(a-5)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-5)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-5)>0.00001)print *,'error-01'
read(8,*) a;if (abs(a-5)>0.00001)print *,'error-01'
end

