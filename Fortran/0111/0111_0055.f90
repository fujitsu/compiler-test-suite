real(4),parameter::r4=1.0
real(8),parameter::r8=1.0
complex(8)::c8=(r4,8)

if ( (real(c8) - 1.0 ) < 0.000001 ) then
  print *,'pass'
else
  print *,'ng',c8
endif
end
