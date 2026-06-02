call aaaa
call bbbb
call cccc
print *,'pass'
contains
subroutine aaaa
integer ea
parameter(ea=8000*1024)
real(4),dimension(ea+1)::r4=0
real(4),dimension(ea+10)::r40=0
real(4),dimension(ea+100)::r400=0
real(4),dimension(ea+1000)::r4000=0
real(4),dimension(ea+1010)::r4010=0
real(4),dimension(ea+1020)::r4020=0
real(4),dimension(ea+1021)::r4021=0
real(4),dimension(ea+1022)::r4022=0
real(4),dimension(ea+1023)::r4023=0
real(4),dimension(ea+1024)::r4024=0
if(r4(ea/2).ne.0)print *,'fail'
if(r40(ea/2).ne.0)print *,'fail'
if(r400(ea/2).ne.0)print *,'fail'
if(r4000(ea/2).ne.0)print *,'fail'
if(r4010(ea/2).ne.0)print *,'fail'
if(r4020(ea/2).ne.0)print *,'fail'
if(r4021(ea/2).ne.0)print *,'fail'
if(r4022(ea/2).ne.0)print *,'fail'
if(r4023(ea/2).ne.0)print *,'fail'
if(r4024(ea/2).ne.0)print *,'fail'
end subroutine
subroutine bbbb
integer ea
parameter(ea=8000*1024)
real(8),dimension(ea+1)::r8=0
real(8),dimension(ea+10)::r80=0
real(8),dimension(ea+100)::r800=0
real(8),dimension(ea+1000)::r8000=0
real(8),dimension(ea+1010)::r8010=0
real(8),dimension(ea+1020)::r8020=0
real(8),dimension(ea+1021)::r8021=0
real(8),dimension(ea+1022)::r8022=0
real(8),dimension(ea+1023)::r8023=0
if(r8(ea/2).ne.0)print *,'fail'
if(r80(ea/2).ne.0)print *,'fail'
if(r800(ea/2).ne.0)print *,'fail'
if(r8000(ea/2).ne.0)print *,'fail'
if(r8010(ea/2).ne.0)print *,'fail'
if(r8020(ea/2).ne.0)print *,'fail'
if(r8021(ea/2).ne.0)print *,'fail'
if(r8022(ea/2).ne.0)print *,'fail'
if(r8023(ea/2).ne.0)print *,'fail'
end subroutine
subroutine cccc
integer ea
parameter(ea=8000*1024)
real(16),dimension(ea+1)::r16=0
real(16),dimension(ea+10)::r160=0
real(16),dimension(ea+100)::r1600=0
real(16),dimension(ea+1000)::r16000=0
real(16),dimension(ea+1010)::r16010=0
real(16),dimension(ea+1020)::r16020=0
real(16),dimension(ea+1021)::r16021=0
real(16),dimension(ea+1022)::r16022=0
real(16),dimension(ea+1023)::r16023=0
if(r16(ea/2).ne.0)print *,'fail'
if(r160(ea/2).ne.0)print *,'fail'
if(r1600(ea/2).ne.0)print *,'fail'
if(r16000(ea/2).ne.0)print *,'fail'
if(r16010(ea/2).ne.0)print *,'fail'
if(r16020(ea/2).ne.0)print *,'fail'
if(r16021(ea/2).ne.0)print *,'fail'
if(r16022(ea/2).ne.0)print *,'fail'
if(r16023(ea/2).ne.0)print *,'fail'
end subroutine
end

