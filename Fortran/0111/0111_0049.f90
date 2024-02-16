real(4),parameter::r4=1.0
real(8),parameter::r8=1.0
complex(8)::c8=(r4,r8)

call sub(c8,c8)
end

subroutine sub(a,b)
complex(8)::a,b
if ( (real(a) - 1.0 ) < 0.000001 ) then
  print *,'pass'
else
  print *,'ng',a
endif
a=b
end subroutine
