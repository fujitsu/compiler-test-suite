subroutine s1
real(8),parameter::b1=-(0.0_4,0.0_4)
real(8),parameter::b2=-(0.0_8,0.0_8)
real(8),parameter::b3=-(0.0_16,0.0_16)
write(1,'(z16.16)')b1
write(1, '(z16.16)')b2
write(1, '(z16.16)')b3
end
subroutine s2
real(8),parameter::b1=-0.0_4
real(8),parameter::b2=-0.0_8
real(8),parameter::b3=-0.0_16
write(1,'(z16.16)')b1
write(1, '(z16.16)')b2
write(1, '(z16.16)')b3
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character*16 c
character*(*),parameter:: x='8000000000000000'
character*(*),parameter:: y='8000000000000000'
rewind 1
read(1,'(a)') c;if (c/=x)print *,101,c
read(1,'(a)') c;if (c/=x)print *,102,c
read(1,'(a)') c;if (c/=x)print *,103,c
read(1,'(a)') c;if (c/=y)print *,104,c
read(1,'(a)') c;if (c/=y)print *,105,c
read(1,'(a)') c;if (c/=y)print *,106,c
end
