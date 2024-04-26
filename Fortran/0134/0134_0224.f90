subroutine s1
complex(16),parameter::b1=-(0.0_4,0.0_4)
complex(16),parameter::b2=-(0.0_8,0.0_8)
complex(16),parameter::b3=-(0.0_16,0.0_16)
write(1,'(z32.32,1x,z32.32)')b1
write(1, '(z32.32,1x,z32.32)')b2
write(1, '(z32.32,1x,z32.32)')b3
end
subroutine s2
complex(16),parameter::b1=-0.0_4
complex(16),parameter::b2=-0.0_8
complex(16),parameter::b3=-0.0_16
write(1,'(z32.32,1x,z32.32)')b1
write(1, '(z32.32,1x,z32.32)')b2
write(1, '(z32.32,1x,z32.32)')b3
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character*65 c
character*65,parameter:: x='80000000000000000000000000000000 80000000000000000000000000000000'
character*65,parameter:: y='80000000000000000000000000000000 00000000000000000000000000000000'
rewind 1
read(1,'(a)') c;if (c/=x)print *,101,c
read(1,'(a)') c;if (c/=x)print *,102,c
read(1,'(a)') c;if (c/=x)print *,103,c
read(1,'(a)') c;if (c/=y)print *,104,c
read(1,'(a)') c;if (c/=y)print *,105,c
read(1,'(a)') c;if (c/=y)print *,106,c
end
