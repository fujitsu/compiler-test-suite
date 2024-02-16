program pro
implicit none
real :: x1(4),x2(4),x3(4)
x1=LOG_GAMMA((/3.0,4.4,3.8,4.2/))
x2=LOG_GAMMA((/3.0_8,4.4_8,3.8_8,4.2_8/))
x3=LOG_GAMMA((/3.0_16,4.4_16,3.8_16,4.2_16/))
if( .not.(x1(1)>0.68 .and. x1(1)<0.70))  print *,101
if( .not.(x1(2)>2.30 .and. x1(2)<2.32))  print *,102
if( .not.(x1(3)>1.53 .and. x1(3)<1.55))  print *,103
if( .not.(x1(4)>2.03 .and. x1(4)<2.05))  print *,104

if( .not.(x2(1)>0.68 .and. x2(1)<0.70))  print *,201
if( .not.(x2(2)>2.30 .and. x2(2)<2.32))  print *,202
if( .not.(x2(3)>1.53 .and. x2(3)<1.55))  print *,203
if( .not.(x2(4)>2.03 .and. x2(4)<2.05))  print *,204

if( .not.(x3(1)>0.68 .and. x3(1)<0.70))  print *,301
if( .not.(x3(2)>2.30 .and. x3(2)<2.32))  print *,302
if( .not.(x3(3)>1.53 .and. x3(3)<1.55))  print *,303
if( .not.(x3(4)>2.03 .and. x3(4)<2.05))  print *,304
        print*,"pass"
end
