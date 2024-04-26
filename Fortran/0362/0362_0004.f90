character(len= 1,kind=4),parameter::cc1=4_'A'
character(len= 1,kind=4),parameter::cc2=4_'B'
character(len=10,kind=4),parameter::cc3=4_'XYZ  '
character(len=10,kind=4),parameter::cc4=4_'XYZ  '
integer,parameter::ii1=     iachar  (kind=1,c=cc1)
integer,parameter::ii2=     ichar   (kind=1,c=cc2)
integer,parameter::ii3=     len     (kind=1,string=cc3)
integer,parameter::ii4=     len_trim(kind=1,string=cc4)
integer,parameter::kk1=kind(iachar  (kind=1,c=cc1))
integer,parameter::kk2=kind(ichar   (kind=1,c=cc2))
integer,parameter::kk3=kind(len     (kind=1,string=cc3))
integer,parameter::kk4=kind(len_trim(kind=1,string=cc4))
if ( ii1 == 65             .and. kk1 == 1 .and. &
     ii2 == 66             .and. kk2 == 1 .and. &
     ii3 == 10             .and. kk3 == 1 .and. &
     ii4 ==  3             .and. kk4 == 1 .and. &
     iachar  (kind=1,c=cc1) == 65 .and. kind(iachar  (kind=1,c=cc1)) == 1 .and. &
     ichar   (kind=1,c=cc2) == 66 .and. kind(ichar   (kind=1,c=cc2)) == 1 .and. &
     len     (kind=1,string=cc3) == 10 .and. kind(len     (kind=1,string=cc3)) == 1 .and. &
     len_trim(kind=1,string=cc4) ==  3 .and. kind(len_trim(kind=1,string=cc4)) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii1,ii2,ii3,ii4
  print *,kk1,kk2,kk3,kk4
endif
end
