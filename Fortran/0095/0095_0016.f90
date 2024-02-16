program pro
implicit none
real(KIND=8) :: rslt
rslt=LOG_GAMMA(3.0_8)
if(.not.(rslt>0.68 .and. rslt<0.70)) print*,101,rslt
        print*,"pass"
end
