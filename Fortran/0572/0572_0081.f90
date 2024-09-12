program pro
implicit none
real :: rslt
rslt=ERFC_SCALED(20.0)
if(.not.(rslt>0.027 .and. rslt<0.029)) print*,101
print*,"pass"
end
