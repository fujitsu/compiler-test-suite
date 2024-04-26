character(len= 1,kind=4),parameter::cc1=4_'あ'
character(len= 1,kind=4),parameter::cc2=4_'い'
character(len=10,kind=4),parameter::cc3=4_'う  '
character(len=10,kind=4),parameter::cc4=4_'わ  '
integer,parameter::ii1=     iachar  (cc1,4)
integer,parameter::ii2=     ichar   (cc2,4)
integer,parameter::ii3=     len     (cc3,4)
integer,parameter::ii4=     len_trim(cc4,4)
integer,parameter::kk1=kind(iachar  (cc1,4))
integer,parameter::kk2=kind(ichar   (cc2,4))
integer,parameter::kk3=kind(len     (cc3,4))
integer,parameter::kk4=kind(len_trim(cc4,4))
if ( ii1 == Z'3042'             .and. kk1 == 4 .and. &
     ii2 == Z'3044'             .and. kk2 == 4 .and. &
     ii3 == 10             .and. kk3 == 4 .and. &
     ii4 ==  1             .and. kk4 == 4 .and. &
     iachar  (cc1,4) == Z'3042' .and. kind(iachar  (cc1,1)) == 1 .and. &
     ichar   (cc2,4) == Z'3044' .and. kind(ichar   (cc2,2)) == 2 .and. &
     len     (cc3,8) == 10 .and. kind(len     (cc3,4)) == 4 .and. &
     len_trim(cc4,8) ==  1 .and. kind(len_trim(cc4,8)) == 8 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii1,ii2,ii3,ii4
  print *,kk1,kk2,kk3,kk4
endif
end
