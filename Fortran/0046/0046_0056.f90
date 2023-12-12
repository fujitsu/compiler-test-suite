program pro
 real(kind=4),parameter :: x1(2)=(/3.0,4.0/)
 real(kind=8),parameter ::x2(2)=(/3.0,4.0/)
 real(kind=16),parameter :: x3(2)=(/3.0,4.0/)

 real(kind=4):: y1(2)  = BESSEL_Y1(x1)
 real(kind=8):: y2(2)  = BESSEL_Y1(x2)
 real(kind=16):: y3(2)  = BESSEL_Y1(x3)
    if( .not.(y1(1)>0.30 .and. y1(1)<0.34))  print *,101
    if( .not.(y1(2)>0.37 .and. y1(2)<0.40))  print *,102
    if( .not.(y2(1)>0.30 .and. y2(1)<0.34))  print *,103
    if( .not.(y2(2)>0.37 .and. y2(2)<0.40))  print *,104
    if( .not.(y3(1)>0.30 .and. y3(1)<0.34))  print *,105
    if( .not.(y3(2)>0.37 .and. y3(2)<0.40))  print *,106
    print*,"pass"
end
