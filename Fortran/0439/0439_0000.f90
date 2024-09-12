program main
complex(16),parameter::a = (23.0_16, 34.76_16)
complex(16),parameter::b = (12.0_16, 15.8_16)
complex(16)::frout = merge(a,b, .false.)
complex(16)::bckout
bckout = merge(a,b,.false.)
print *,frout, "--",bckout
if (frout.ne.bckout) then
print *,'??? Error ???'
else
print*,"pass"
endif
END

