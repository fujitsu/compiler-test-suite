subroutine s1
real(4),parameter::b1=-(0.0_4,0.0_4)
real(4),parameter::b2=-(0.0_8,0.0_8)
real(4),parameter::b3=-(0.0_16,0.0_16)
write(80,'(z8.8)')b1
write(80, '(z8.8)')b2
write(80, '(z8.8)')b3
end
subroutine s2
real(4),parameter::b1=-0.0_4
real(4),parameter::b2=-0.0_8
real(4),parameter::b3=-0.0_16
write(80,'(z8.8)')b1
write(80, '(z8.8)')b2
write(80, '(z8.8)')b3
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character*8 c
character*(*),parameter:: x='80000000'
character*(*),parameter:: y='80000000'
rewind 80
read(80,'(a)') c;if (c/=x)print *,101,c
read(80,'(a)') c;if (c/=x)print *,102,c
read(80,'(a)') c;if (c/=x)print *,103,c
read(80,'(a)') c;if (c/=y)print *,104,c
read(80,'(a)') c;if (c/=y)print *,105,c
read(80,'(a)') c;if (c/=y)print *,106,c
end
