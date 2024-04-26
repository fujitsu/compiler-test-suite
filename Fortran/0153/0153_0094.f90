real(8) a,b,c
a= 0.2345
b=-0.2345
c=+0.2345
write(1,*)a,b,c
a= 1.e-2
b=-1.e-2
c=+1.e-2
write(1,*)a,b,c
call x
print *,'pass'
end
subroutine x
real (8) z(3)
rewind 1
read(1,*) z
if (z(1)/=abs(z(2)))print *,101,z(1),z(2)
if (z(1)/=    z(3)) print *,102,z(1),z(3)
if (z(3)/=abs(z(2)))print *,103,z(3),z(2)
read(1,*) z
if (z(1)/=abs(z(2)))print *,201,z(1),z(2)
if (z(1)/=    z(3)) print *,202,z(1),z(3)
if (z(3)/=abs(z(2)))print *,203,z(3),z(2)
end
