type x
  complex d
end type
complex ,parameter::d=merge((7,1.5),(2.0,2.5),.true.)
write(1,*)d
write(1,*)merge((7,1.5),(2.0,2.5),.true.)
write(1,*)x(merge((7,1.5),(2.0,2.5),.true.))
call chk
print *,'pass'
end
subroutine chk
complex c
rewind 1
read(1,*) c
if (abs(c-(7,1.5))>0.001)print *,101
read(1,*) c
if (abs(c-(7,1.5))>0.001)print *,102
read(1,*) c
if (abs(c-(7,1.5))>0.001)print *,103
end

