call aaaa
call bbbb
call cccc
call dddd
print *,'pass'
contains
subroutine aaaa
integer ea
parameter(ea=8000*1024)
integer(1),dimension(ea+1)::i1=0
integer(1),dimension(ea+10)::i10=0
integer(1),dimension(ea+100)::i100=0
integer(1),dimension(ea+1000)::i1000=0
integer(1),dimension(ea+1010)::i1010=0
integer(1),dimension(ea+1020)::i1020=0
integer(1),dimension(ea+1021)::i1021=0
integer(1),dimension(ea+1022)::i1022=0
integer(1),dimension(ea+1023)::i1023=0
integer(1),dimension(ea+1024)::i1024=0
if(i1(ea/2).ne.0)print *,'fail'
if(i10(ea/2).ne.0)print *,'fail'
if(i100(ea/2).ne.0)print *,'fail'
if(i1000(ea/2).ne.0)print *,'fail'
if(i1010(ea/2).ne.0)print *,'fail'
if(i1020(ea/2).ne.0)print *,'fail'
if(i1021(ea/2).ne.0)print *,'fail'
if(i1022(ea/2).ne.0)print *,'fail'
if(i1023(ea/2).ne.0)print *,'fail'
if(i1024(ea/2).ne.0)print *,'fail'
end subroutine
subroutine bbbb
integer ea
parameter(ea=8000*1024)
integer(2),dimension(ea+1)::i2=0
integer(2),dimension(ea+10)::i20=0
integer(2),dimension(ea+100)::i200=0
integer(2),dimension(ea+1000)::i2000=0
integer(2),dimension(ea+1010)::i2010=0
integer(2),dimension(ea+1020)::i2020=0
integer(2),dimension(ea+1021)::i2021=0
integer(2),dimension(ea+1022)::i2022=0
integer(2),dimension(ea+1023)::i2023=0
integer(2),dimension(ea+1024)::i2024=0
if(i2(ea/2).ne.0)print *,'fail'
if(i20(ea/2).ne.0)print *,'fail'
if(i200(ea/2).ne.0)print *,'fail'
if(i2000(ea/2).ne.0)print *,'fail'
if(i2010(ea/2).ne.0)print *,'fail'
if(i2020(ea/2).ne.0)print *,'fail'
if(i2021(ea/2).ne.0)print *,'fail'
if(i2022(ea/2).ne.0)print *,'fail'
if(i2023(ea/2).ne.0)print *,'fail'
if(i2024(ea/2).ne.0)print *,'fail'
end subroutine
subroutine cccc
integer ea
parameter(ea=8000*1024)
integer(4),dimension(ea+1)::i4=0
integer(4),dimension(ea+10)::i40=0
integer(4),dimension(ea+100)::i400=0
integer(4),dimension(ea+1000)::i4000=0
integer(4),dimension(ea+1010)::i4010=0
integer(4),dimension(ea+1020)::i4020=0
integer(4),dimension(ea+1021)::i4021=0
integer(4),dimension(ea+1022)::i4022=0
integer(4),dimension(ea+1023)::i4023=0
integer(4),dimension(ea+1024)::i4024=0
if(i4(ea/2).ne.0)print *,'fail'
if(i40(ea/2).ne.0)print *,'fail'
if(i400(ea/2).ne.0)print *,'fail'
if(i4000(ea/2).ne.0)print *,'fail'
if(i4010(ea/2).ne.0)print *,'fail'
if(i4020(ea/2).ne.0)print *,'fail'
if(i4021(ea/2).ne.0)print *,'fail'
if(i4022(ea/2).ne.0)print *,'fail'
if(i4023(ea/2).ne.0)print *,'fail'
if(i4024(ea/2).ne.0)print *,'fail'
end subroutine
subroutine dddd
integer ea
parameter(ea=8000*1024)
integer(8),dimension(ea+1)::i8=0
integer(8),dimension(ea+10)::i80=0
integer(8),dimension(ea+100)::i800=0
integer(8),dimension(ea+1000)::i8000=0
integer(8),dimension(ea+1010)::i8010=0
integer(8),dimension(ea+1020)::i8020=0
integer(8),dimension(ea+1021)::i8021=0
integer(8),dimension(ea+1022)::i8022=0
integer(8),dimension(ea+1023)::i8023=0
if(i8(ea/2).ne.0)print *,'fail'
if(i80(ea/2).ne.0)print *,'fail'
if(i800(ea/2).ne.0)print *,'fail'
if(i8000(ea/2).ne.0)print *,'fail'
if(i8010(ea/2).ne.0)print *,'fail'
if(i8020(ea/2).ne.0)print *,'fail'
if(i8021(ea/2).ne.0)print *,'fail'
if(i8022(ea/2).ne.0)print *,'fail'
if(i8023(ea/2).ne.0)print *,'fail'
end subroutine
end

