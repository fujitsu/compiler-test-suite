module m1
  type a1
     integer ::x1=1
  end type
  type,extends(a1)::a2
     character ::x2='2'
  end type
  type,extends(a2)::a3
     complex   ::x3=(3,4)
  end type
  type,extends(a3)::a4
     logical   ::x4=.false.
  end type
type (a4),save:: v
end
subroutine s1
use m1
v=a4(8,'5',(6,7),.true.)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(x1=18,x2='4',x3=(16,17),x4=.true.)
if (v%x1/=18)print *,'error-01'
if (v%x2/='4')print *,'error-02'
if (abs(v%x3-(16,17))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   8,   '5',x3=(6,7),x4=.true.)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a1(18),x2='4',x3=(16,17),x4=.true.)
if (v%x1/=18)print *,'error-01'
if (v%x2/='4')print *,'error-02'
if (abs(v%x3-(16,17))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a2(8,'5'),x3=(6,7),x4=.true.)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a3(x1=18,x2='4',x3=(16,17)),x4=.true.)
if (v%x1/=18)print *,'error-01'
if (v%x2/='4')print *,'error-02'
if (abs(v%x3-(16,17))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a2(a1(8),'5'),x3=(6,7),x4=.true.)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a3(a2(x1=18,x2='4'),x3=(16,17)),x4=.true.)
if (v%x1/=18)print *,'error-01'
if (v%x2/='4')print *,'error-02'
if (abs(v%x3-(16,17))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a3(a2(a1(8),'5'),x3=(6,7)),x4=.true.)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
end
call s1
print *,'pass'
end
  
