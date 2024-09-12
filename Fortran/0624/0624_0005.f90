subroutine s1
real(16),parameter::x=(1.7336377642830889e19_16)**(0.0e0_16)
real(16),parameter::y=(1.7336377642830889e19_16)**(1.0e0_16)
real(16)::r
write(1,*) (/(1.7336377642830889e19_16)**(0.0e0_16)/)
write(1,*)x
write(1,*)y
  r=0.0e0_16
  write(1,*) (1.7336377642830889e19_16)**r
end
real(16)::z
call s1
rewind 1
read(1,*) z
if (abs(z-1.0)>0.000000000000000001)print *,101
read(1,*) z
if (abs(z-1.0)>0.000000000000000001)print *,102
read(1,*) z
if (abs(z-1.7336377642830889e19_16)>0.1e8_16)print *,103
read(1,*) z
if (abs(z-1.0)>0.000000000000000001)print *,104
print *,'pass'
end
