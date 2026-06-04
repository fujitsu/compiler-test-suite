program pro
block
 real,parameter :: x1(2)=(/10.0,20.0/)
 real(kind=8),parameter :: x2(2)=(/10.0,20.0/)
 real(kind=16),parameter :: x3(2)=(/10.0,20.0/)
 real:: rslt1(2)  = ERFC_SCALED(x1)
 real(kind=8):: rslt2(2)  = ERFC_SCALED(x2)
 real(kind=16):: rslt3(2)  = ERFC_SCALED(x3)

if( .not.(rslt1(1)>0.054 .and. rslt1(1)<0.058))  print *,101
if( .not.(rslt1(2)>0.026 .and. rslt1(2)<0.029))  print *,102

if( .not.(rslt2(1)>0.054 .and. rslt3(1)<0.058))  print *,103
if( .not.(rslt2(2)>0.026 .and. rslt3(2)<0.029))  print *,104


if( .not.(rslt3(1)>0.054 .and. rslt3(1)<0.058))  print *,105
if( .not.(rslt3(2)>0.026 .and. rslt3(2)<0.029))  print *,106
print*,"pass"
end block
end
