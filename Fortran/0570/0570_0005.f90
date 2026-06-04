program pro
block
Intrinsic :: ERFC_SCALED
 real,parameter :: x(2,2)=ERFC_SCALED(RESHAPE([2.0,1.4,1.8,2.2],[2,2]))

    if( .not.(x(1,1)>0.23 .and. x(1,1)<0.27))  print *,101
    if( .not.(x(2,1)>0.30 .and. x(2,1)<0.35))  print *,102
    if( .not.(x(1,2)>0.25 .and. x(1,2)<0.29))  print *,103
    if( .not.(x(2,2)>0.21 .and. x(2,2)<0.25))  print *,104
    print *, "pass"
end block
end
