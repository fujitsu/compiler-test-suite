program main
real(16),parameter::a = (12.0_16, 15.8_16)
real(16),parameter::b = (23.0_16, 34.76_16)
complex*32::frout = merge(a,b, .false.)
complex*32::bckout
bckout = merge(a,b,.false.)
print *,frout, "--",bckout

if (frout.ne.bckout) then
print *,'??? Error ???'
else
print*,"pass"
endif

END