program pro
implicit none
intrinsic:: ERFC_SCALED
real ::x1= 20.0
real :: rslt
rslt=ERFC_SCALED(x1)
if(.not.(rslt>0.027 .and. rslt<0.29)) print*,101,rslt
print*,"pass"
end
