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
complex c67
character c5/'5'/
logical w/.true./
namelist /nam/ v
c67=(6,7)
v=a4(8,c5,(6,7),w)
if (v%x1/=8)print *,'error-01'
if (v%x2/=c5)print *,'error-02'
if (abs(v%x3-c67)>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
write(1,nam)
call chk
end
subroutine chk
use m1,only:a4
type (a4),save:: v
namelist /nam/ v
rewind 1
read(1,nam)
if (v%x1/=8)print *,'error-01'
if (v%x2/='5')print *,'error-02'
if (abs(v%x3-(6,7))>0.0001)print *,'error-03'
if (.not.v%x4)print *,'error-04'
end
call s1
print *,'pass'
end
  
