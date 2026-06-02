module m1
 integer:: x1
 common /x1/ k
 bind (c)::/x1/
 contains
   subroutine z1
     k=1
     x1=2
   end subroutine
end
module m2
 common /x2/ k
 integer:: x2
 bind (c)::/x2/
 contains
   subroutine z2
     k=1
     x2=2
   end subroutine
end
module m3
 bind (c,name='y3'):: x3
 integer:: x3
 common /x3/ k
 bind (c)::/x3/
 contains
   subroutine z3
     k=1
     x3=2
   end subroutine
end
module m4
 bind (c,name='y4'):: x4
 common /x4/ k
 integer:: x4
 bind (c)::/x4/
 contains
   subroutine z4
     k=1
     x4=2
   end subroutine
end
module m5
 integer:: x5
 bind (c,name='y5'):: x5
 common /x5/ k
 bind (c)::/x5/
 contains
   subroutine z5
     k=1
     x5=2
   end subroutine
end
module m6
 common /x6/ k
 bind (c,name='y6'):: x6
 integer:: x6
 bind (c)::/x6/
 contains
   subroutine z6
     k=1
     x6=2
   end subroutine
end
module m7
 integer:: x7
 common /x7/ k
 bind (c,name='y7'):: x7
 bind (c)::/x7/
 contains
   subroutine z7
     k=1
     x7=2
   end subroutine
end
module m8
 common /x8/ k
 integer:: x8
 bind (c,name='y8'):: x8
 bind (c)::/x8/
 contains
   subroutine z8
     k=1
     x8=2
   end subroutine
end
module all
use m1,only:x1
use m2,only:x2
use m3,only:x3
use m4,only:x4
use m5,only:x5
use m6,only:x6
use m7,only:x7
use m8,only:x8
 implicit integer(x)
 bind (c,name='yy1'):: yx1
 bind (c,name='yy2'):: yx2
 bind (c,name='yy3'):: yx3
 bind (c,name='yy4'):: yx4
 bind (c,name='yy5'):: yx5
 bind (c,name='yy6'):: yx6
 bind (c,name='yy7'):: yx7
 bind (c,name='yy8'):: yx8
 common /x1/ k1
 common /x2/ k2
 common /x3/ k3
 common /x4/ k4
 common /x5/ k5
 common /x6/ k6
 common /x7/ k7
 common /x8/ k8
 bind (c,name='x1')::/x1/
 bind (c,name='x2')::/x2/
 bind (c,name='x3')::/x3/
 bind (c,name='x4')::/x4/
 bind (c,name='x5')::/x5/
 bind (c,name='x6')::/x6/
 bind (c,name='x7')::/x7/
 bind (c,name='x8')::/x8/
 contains
   subroutine chk
     if (x1/=2)print *,1001,x1
     if (x2/=2)print *,1002,x2
     if (x3/=2)print *,1003,x3
     if (x4/=2)print *,1004,x4
     if (x5/=2)print *,1005,x5
     if (x6/=2)print *,1006,x6
     if (x7/=2)print *,1007,x7
     if (x8/=2)print *,1008,x8
     if (k1/=1)print *,2001,k1
     if (k2/=1)print *,2002,k2
     if (k3/=1)print *,2003,k3
     if (k4/=1)print *,2004,k4
     if (k5/=1)print *,2005,k5
     if (k6/=1)print *,2006,k6
     if (k7/=1)print *,2007,k7
     if (k8/=1)print *,2008,k8
   end subroutine
end
subroutine s1
use m1
use m2
use m3
use m4
use m5
use m6
use m7
use m8
use all	
call z1
call z2
call z3
call z4
call z5
call z6
call z7
call z8
call chk
end
call s1
print *,'pass'
end

