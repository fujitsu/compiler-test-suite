character(len= 1,kind=4),parameter::cc1=4_'𢀀'
character(len= 1,kind=4),parameter::cc2=4_'𢀀'
character(len=10,kind=4),parameter::cc3=4_'𢀀  '
character(len=10,kind=4),parameter::cc4=4_'𢀀 '
integer,parameter::ii1=     iachar  (cc1,2)
integer,parameter::ii2=     ichar   (cc2,2)
integer,parameter::ii3=     len     (cc3,2)
integer,parameter::ii4=     len_trim(cc4,2)
integer,parameter::kk1=kind(iachar  (cc1,2))
integer,parameter::kk2=kind(ichar   (cc2,2))
integer,parameter::kk3=kind(len     (cc3,2))
integer,parameter::kk4=kind(len_trim(cc4,2))
if ( ii1 == 12354             .and. kk1 == 4 ) print *,'ng'
if ( ii2 == 12356             .and. kk2 == 4 ) print *,'ng'
if ( ii3 == 10             .and. kk3 == 4 ) print *,'ng'
if ( ii4 ==  1             .and. kk4 == 4 ) print *,'ng'
if ( iachar  (cc1,2) == 12354 .and. kind(iachar  (cc1,1)) == 1 ) print *,'ng'
if ( ichar   (cc2,2) == 12356 .and. kind(ichar   (cc2,2)) == 2 ) print *,'ng'
if ( len     (cc3,2) == 10 .and. kind(len     (cc3,4)) == 4 ) print *,'ng'
if ( len_trim(cc4,2) ==  1 .and. kind(len_trim(cc4,8)) == 8 ) print *,'ng'
print *,'pass'
end
