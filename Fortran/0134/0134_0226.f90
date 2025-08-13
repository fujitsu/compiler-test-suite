subroutine s1
complex(4),parameter::b1=-(0.0_4,0.0_4)
complex(4),parameter::b2=-(0.0_8,0.0_8)
complex(4),parameter::b3=-(0.0_16,0.0_16)
write(79,'(z8.8,1x,z8.8)')b1
write(79, '(z8.8,1x,z8.8)')b2
write(79, '(z8.8,1x,z8.8)')b3
end
subroutine s2
complex(4),parameter::b1=-0.0_4
complex(4),parameter::b2=-0.0_8
complex(4),parameter::b3=-0.0_16
write(79,'(z8.8,1x,z8.8)')b1
write(79, '(z8.8,1x,z8.8)')b2
write(79, '(z8.8,1x,z8.8)')b3
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character*33 c
character*(*),parameter:: x='80000000 80000000'
character*(*),parameter:: y='80000000 00000000'
rewind 79
read(79,'(a)') c;if (c/=x)print *,101,c
read(79,'(a)') c;if (c/=x)print *,102,c
read(79,'(a)') c;if (c/=x)print *,103,c
read(79,'(a)') c;if (c/=y)print *,104,c
read(79,'(a)') c;if (c/=y)print *,105,c
read(79,'(a)') c;if (c/=y)print *,106,c
end
