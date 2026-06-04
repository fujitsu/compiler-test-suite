call aaaa
call bbbb
call cccc
print *,'pass'
contains
subroutine aaaa
integer ea
parameter(ea=8000*1024)
complex(4),dimension(ea+1)::c8=0
complex(4),dimension(ea+10)::c80=0
complex(4),dimension(ea+100)::c800=0
complex(4),dimension(ea+1000)::c8000=0
if(c8(ea/2).ne.0)print *,'fail'
if(c80(ea/2).ne.0)print *,'fail'
if(c800(ea/2).ne.0)print *,'fail'
if(c8000(ea/2).ne.0)print *,'fail'
end subroutine
subroutine bbbb
integer ea
parameter(ea=8000*1024)
complex(8),dimension(ea+1)::c16=0
complex(8),dimension(ea+10)::c160=0
complex(8),dimension(ea+100)::c1600=0
complex(8),dimension(ea+1000)::c16000=0
if(c16(ea/2).ne.0)print *,'fail'
if(c160(ea/2).ne.0)print *,'fail'
if(c1600(ea/2).ne.0)print *,'fail'
if(c16000(ea/2).ne.0)print *,'fail'
end subroutine
subroutine cccc
integer ea
parameter(ea=8000*1024)
complex(16),dimension(ea+1)::c32=0
complex(16),dimension(ea+10)::c320=0
complex(16),dimension(ea+100)::c3200=0
complex(16),dimension(ea+1000)::c32000=0
if(c32(ea/2).ne.0)print *,'fail'
if(c320(ea/2).ne.0)print *,'fail'
if(c3200(ea/2).ne.0)print *,'fail'
if(c32000(ea/2).ne.0)print *,'fail'
end subroutine
end

