character(len= 2,kind=4),parameter::cc1=1_'A'
character(len= 2,kind=4),parameter::cc2=1_'B'
integer,parameter::ii1=     iachar  (cc1,1)
integer,parameter::ii2=     ichar   (cc2,1)
integer,parameter::kk1=kind(iachar  (cc1,1))
integer,parameter::kk2=kind(ichar   (cc2,1))
if ( ii1 == 65             .and. kk1 == 1 ) print *,'ng'
if ( ii2 == 66             .and. kk2 == 1 ) print *,'ng'
if ( iachar  (cc1,1) == 65 .and. kind(iachar  (cc1,1)) == 1 ) print *,'ng'
if ( ichar   (cc2,1) == 66 .and. kind(ichar   (cc2,1)) == 1 ) print *,'ng'
print *,'pass'
end
