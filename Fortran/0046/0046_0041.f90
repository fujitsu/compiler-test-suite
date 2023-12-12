program pro
 real,parameter :: x(2,2)=BESSEL_Y0(RESHAPE([2.0,1.4,1.8,2.2],[2,2]))
   if( .not.(x(1,1)>0.50 .and. x(1,1)<0.53))  print *,101
   if( .not.(x(2,1)>0.31 .and. x(2,1)<0.35))  print *,102
   if( .not.(x(1,2)>0.45 .and. x(1,2)<0.48))  print *,103
   if( .not.(x(2,2)>0.51 .and. x(2,2)<0.55))  print *,104
    print *, "pass"
end
