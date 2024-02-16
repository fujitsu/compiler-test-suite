! Array Constructor
! Block used
program pro
block
 real,parameter :: x1(2)=(/3.0,4.0/)
 real(kind=8),parameter :: x2(2)=(/3.0,4.0/)
 real(kind=16),parameter :: x3(2)=(/3.0,4.0/)
 real:: rslt1(2)  = LOG_GAMMA(x1)
 real(kind=8):: rslt2(2)  = LOG_GAMMA(x2)
 real(kind=16):: rslt3(2)  = LOG_GAMMA(x3)
if( .not.(rslt1(1)>0.68 .and. rslt1(1)<0.70))  print *,101
if( .not.(rslt1(2)>1.78 .and. rslt1(2)<1.80))  print *,102

if( .not.(rslt2(1)>0.68 .and. rslt2(1)<0.70))  print *,201
if( .not.(rslt2(2)>1.78 .and. rslt2(2)<1.80))  print *,202

if( .not.(rslt3(1)>0.68 .and. rslt3(1)<0.70))  print *,301
if( .not.(rslt3(2)>1.78 .and. rslt3(2)<1.80))  print *,302
print*,"pass"
end block
end
