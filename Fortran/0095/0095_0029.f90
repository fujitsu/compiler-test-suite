program pro
implicit none
block
intrinsic:: LOG_GAMMA
real*16 ::x1= 3.0
real :: rslt1
rslt1=LOG_GAMMA(x1)
if(.not.(rslt1>0.68 .and. rslt1<0.70)) print*,101
print*,"pass"
end block
end
