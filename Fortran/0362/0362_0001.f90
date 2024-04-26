character(len=4,kind=1),parameter::cc3(3)=(/1_'AB  ',1_'BCD ',1_'CDEF'/)
integer,parameter::ii3(3)=ichar     (cc3,kind=1)
integer,parameter::kk3(3)=kind(ichar     (cc3,kind=1))
if ( ii3(1) == 65 .and. ii3(2) == 66 .and. ii3(3) == 67 .and. &
     kk3(1) == 1 .and. kk3(2) == 1 .and. kk3(3) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii3
  print *,kk3
endif
end
