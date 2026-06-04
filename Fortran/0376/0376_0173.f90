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
complex c67,c1617
character c5/'5'/,c4/'4'/
logical w/.true./
c67=(6,7)
c1617=(15,16)
v=a4(8,c5,(6,7),w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(x1=i18(),x2=c4,x3=c1617+(1,1),x4=w)
if (v%x1/=i18())print *,'error-01'
if (v%x2/=c4)print *,'error-02'
if (abs(v%x3-c1617-(1,1))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   i8(),   c5,x3=c67,x4=w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a1(i18()),x2=c4,x3=c1617+(1,1),x4=w)
if (v%x1/=i18())print *,'error-01'
if (v%x2/=c4)print *,'error-02'
if (abs(v%x3-c1617-(1,1))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a2(i8(),c5),x3=c67,x4=w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a3(x1=i18(),x2=c4,x3=c1617+(1,1)),x4=w)
if (v%x1/=i18())print *,'error-01'
if (v%x2/=c4)print *,'error-02'
if (abs(v%x3-c1617-(1,1))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a2(a1(8),c5),x3=c67,x4=w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(a3(a2(x1=i18(),x2=c4),x3=c1617+(1,1)),x4=w)
if (v%x1/=i18())print *,'error-01'
if (v%x2/=c4)print *,'error-02'
if (abs(v%x3-c1617-(1,1))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a3(a2(a1(i8()),c5),x3=c67),x4=w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a3(a2(a1( )    ))         ,x4=w)
if (v%x1/=1)print *,'error-01'
if (v%x2/='2')print *,'error-02'
if (abs(v%x3-(3,4))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
v=a4(   a3(a2(a1( )    ))                    )
if (v%x1/=1)print *,'error-01'
if (v%x2/='2')print *,'error-02'
if (abs(v%x3-(3,4))>0.0001)print *,'error-03'
if (v%x4)print *,'error-04'
end
call s1
print *,'pass'
end
 function i8()
  i8=8
 end
 function i18()
   i18=18
 end
