character(len= 1,kind=4),parameter::cc1(3)=(/4_'A ',4_'B ',4_'𢀀'/)
character(len= 1,kind=4),parameter::cc2(3)=(/4_'A ',4_'𢀀',4_'C'/)
character(len=10,kind=4),parameter::cc3(3)=(/4_'AB  ',4_'𢀀 ',4_'CDEF'/)
character(len=10,kind=4),parameter::cc4(3)=(/4_'AB  ',4_'BCD ',4_'CD𢀀'/)
integer,parameter::ii1(3)=iachar  (cc1,kind=2)
integer,parameter::ii2(3)=ichar   (cc2,kind=2)
integer,parameter::ii3(3)=len     (cc3,kind=2)
integer,parameter::ii4(3)=len_trim(cc4,kind=2)
integer,parameter::kk1(3)=kind(iachar  (cc1,kind=2))
integer,parameter::kk2(3)=kind(ichar   (cc2,kind=2))
integer,parameter::kk3(3)=kind(len     (cc3,kind=2))
integer,parameter::kk4(3)=kind(len_trim(cc4,kind=2))
if ( ii1(1) == 65 .and. kk1(1) == 2 .and. &
     ii1(2) == 66 .and. kk1(2) == 2 .and. &
     ii1(3) == 67 .and. kk1(3) == 2 .and. &
     ii1(1) == 65 .and. kk1(1) == 2 .and. &
     ii2(1) == 65 .and. kk2(1) == 2 .and. &
     ii2(2) == 66 .and. kk2(2) == 2 .and. &
     ii2(3) == 67 .and. kk2(3) == 2 .and. &
     ii3(1) == 10 .and. kk3(1) == 2 .and. &
     ii3(2) == 10 .and. kk3(2) == 2 .and. &
     ii3(3) == 10 .and. kk3(3) == 2 .and. &
     ii4(1) ==  2 .and. kk4(1) == 2 .and. &
     ii4(2) ==  3 .and. kk4(2) == 2 .and. &
     ii4(3) ==  4 .and. kk4(3) == 2 .and. &
     iachar  (cc1(1),2) == 65 .and. kind(iachar  (cc1(1),2)) == 1 .and. &
     iachar  (cc1(2),2) == 66 .and. kind(iachar  (cc1(2),2)) == 1 .and. &
     iachar  (cc1(3),2) == 67 .and. kind(iachar  (cc1(3),2)) == 1 .and. &
     ichar   (cc2(1),2) == 65 .and. kind(ichar   (cc2(1),2)) == 1 .and. &
     ichar   (cc2(2),2) == 66 .and. kind(ichar   (cc2(2),2)) == 1 .and. &
     ichar   (cc2(3),2) == 67 .and. kind(ichar   (cc2(3),2)) == 1 .and. &
     len     (cc3(1),2) == 10 .and. kind(len     (cc3(1),2)) == 1 .and. &
     len     (cc3(2),2) == 10 .and. kind(len     (cc3(2),2)) == 1 .and. &
     len     (cc3(3),2) == 10 .and. kind(len     (cc3(3),2)) == 1 .and. &
     len_trim(cc4(1),2) ==  2 .and. kind(len_trim(cc4(1),2)) == 1 .and. &
     len_trim(cc4(2),2) ==  3 .and. kind(len_trim(cc4(2),2)) == 1 .and. &
     len_trim(cc4(3),2) ==  4 .and. kind(len_trim(cc4(3),2)) == 1 ) then
  print *,'pass'
else
  print *,'ng'
  print *,ii1,ii2,ii3,ii4
  print *,kk1,kk2,kk3,kk4
endif
end
