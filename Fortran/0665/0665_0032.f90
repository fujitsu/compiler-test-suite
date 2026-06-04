call aaaa
call bbbb
call cccc
call dddd
print *,'pass'
contains
subroutine aaaa
integer ea
parameter(ea=8000*1024)
logical(1),dimension(ea+1)::l1=.false.
logical(1),dimension(ea+10)::l10=.false.
logical(1),dimension(ea+100)::l100=.false.
logical(1),dimension(ea+1000)::l1000=.false.
logical(1),dimension(ea+1010)::l1010=.false.
logical(1),dimension(ea+1020)::l1020=.false.
logical(1),dimension(ea+1021)::l1021=.false.
logical(1),dimension(ea+1022)::l1022=.false.
logical(1),dimension(ea+1023)::l1023=.false.
logical(1),dimension(ea+1024)::l1024=.false.
if(l1(ea/2).neqv..false.)print *,'fail'
if(l10(ea/2).neqv..false.)print *,'fail'
if(l100(ea/2).neqv..false.)print *,'fail'
if(l1000(ea/2).neqv..false.)print *,'fail'
if(l1010(ea/2).neqv..false.)print *,'fail'
if(l1020(ea/2).neqv..false.)print *,'fail'
if(l1021(ea/2).neqv..false.)print *,'fail'
if(l1022(ea/2).neqv..false.)print *,'fail'
if(l1023(ea/2).neqv..false.)print *,'fail'
if(l1024(ea/2).neqv..false.)print *,'fail'
end subroutine
subroutine bbbb
integer ea
parameter(ea=8000*1024)
logical(2),dimension(ea+1)::l2=.false.
logical(2),dimension(ea+10)::l20=.false.
logical(2),dimension(ea+100)::l200=.false.
logical(2),dimension(ea+1000)::l2000=.false.
logical(2),dimension(ea+1010)::l2010=.false.
logical(2),dimension(ea+1020)::l2020=.false.
logical(2),dimension(ea+1021)::l2021=.false.
logical(2),dimension(ea+1022)::l2022=.false.
logical(2),dimension(ea+1023)::l2023=.false.
logical(2),dimension(ea+1024)::l2024=.false.
if(l2(ea/2).neqv..false.)print *,'fail'
if(l20(ea/2).neqv..false.)print *,'fail'
if(l200(ea/2).neqv..false.)print *,'fail'
if(l2000(ea/2).neqv..false.)print *,'fail'
if(l2010(ea/2).neqv..false.)print *,'fail'
if(l2020(ea/2).neqv..false.)print *,'fail'
if(l2021(ea/2).neqv..false.)print *,'fail'
if(l2022(ea/2).neqv..false.)print *,'fail'
if(l2023(ea/2).neqv..false.)print *,'fail'
if(l2024(ea/2).neqv..false.)print *,'fail'
end subroutine
subroutine cccc
integer ea
parameter(ea=8000*1024)
logical(4),dimension(ea+1)::l4=.false.
logical(4),dimension(ea+10)::l40=.false.
logical(4),dimension(ea+100)::l400=.false.
logical(4),dimension(ea+1000)::l4000=.false.
logical(4),dimension(ea+1010)::l4010=.false.
logical(4),dimension(ea+1020)::l4020=.false.
logical(4),dimension(ea+1021)::l4021=.false.
logical(4),dimension(ea+1022)::l4022=.false.
logical(4),dimension(ea+1023)::l4023=.false.
logical(4),dimension(ea+1024)::l4024=.false.
if(l4(ea/2).neqv..false.)print *,'fail'
if(l40(ea/2).neqv..false.)print *,'fail'
if(l400(ea/2).neqv..false.)print *,'fail'
if(l4000(ea/2).neqv..false.)print *,'fail'
if(l4010(ea/2).neqv..false.)print *,'fail'
if(l4020(ea/2).neqv..false.)print *,'fail'
if(l4021(ea/2).neqv..false.)print *,'fail'
if(l4022(ea/2).neqv..false.)print *,'fail'
if(l4023(ea/2).neqv..false.)print *,'fail'
if(l4024(ea/2).neqv..false.)print *,'fail'
end subroutine
subroutine dddd
integer ea
parameter(ea=8000*1024)
logical(8),dimension(ea+1)::l8=.false.
logical(8),dimension(ea+10)::l80=.false.
logical(8),dimension(ea+100)::l800=.false.
logical(8),dimension(ea+1000)::l8000=.false.
logical(8),dimension(ea+1010)::l8010=.false.
logical(8),dimension(ea+1020)::l8020=.false.
logical(8),dimension(ea+1021)::l8021=.false.
logical(8),dimension(ea+1022)::l8022=.false.
logical(8),dimension(ea+1023)::l8023=.false.
if(l8(ea/2).neqv..false.)print *,'fail'
if(l80(ea/2).neqv..false.)print *,'fail'
if(l800(ea/2).neqv..false.)print *,'fail'
if(l8000(ea/2).neqv..false.)print *,'fail'
if(l8010(ea/2).neqv..false.)print *,'fail'
if(l8020(ea/2).neqv..false.)print *,'fail'
if(l8021(ea/2).neqv..false.)print *,'fail'
if(l8022(ea/2).neqv..false.)print *,'fail'
if(l8023(ea/2).neqv..false.)print *,'fail'
end subroutine
end

