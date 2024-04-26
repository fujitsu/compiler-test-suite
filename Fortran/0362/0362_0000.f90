character(len=10,kind=4),parameter::cc3(3)=(/4_'AB  ',4_'BCD ',4_'CDEF'/)
integer,parameter::ii3=len     (cc3(1:0),kind=1)
integer,parameter::kk3=kind(len     (cc3(1:0),kind=1))
if ( kk3 == 1 .and. &
     kind(len     (cc3(2:1),1)) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii3
  print *,kk3
endif
end
