character(len= 1,kind=4),parameter::cc1=4_'α'
character(len= 1,kind=4),parameter::cc2=4_'β'
character(len=10,kind=4),parameter::cc3=4_'γ  '
character(len=10,kind=4),parameter::cc4=4_'Ω  '
integer,parameter::ii1=     iachar  (cc1,1)
integer,parameter::ii2=     ichar   (cc2,1)
integer,parameter::ii3=     len     (cc3,1)
integer,parameter::ii4=     len_trim(cc4,1)
integer,parameter::kk1=kind(iachar  (cc1,1))
integer,parameter::kk2=kind(ichar   (cc2,1))
integer,parameter::kk3=kind(len     (cc3,1))
integer,parameter::kk4=kind(len_trim(cc4,1))
if ( ii1 == 65             .and. kk1 == 1 ) print *,'ng'
if ( ii2 == 66             .and. kk2 == 1 ) print *,'ng'
if ( ii3 == 10             .and. kk3 == 1 ) print *,'ng'
if ( ii4 ==  3             .and. kk4 == 1 ) print *,'ng'
if ( iachar  (cc1,1) == 65 .and. kind(iachar  (cc1,1)) == 1 ) print *,'ng'
if ( ichar   (cc2,1) == 66 .and. kind(ichar   (cc2,1)) == 1 ) print *,'ng'
if ( len     (cc3,1) == 10 .and. kind(len     (cc3,1)) == 1 ) print *,'ng'
if ( len_trim(cc4,1) ==  3 .and. kind(len_trim(cc4,1)) == 1 ) print *,'ng'
print *,'pass'
end
