print *,'pass'
end
subroutine test()
integer :: a,x,y,z,i,j,k
a=1
z=1
x=1
y=1
i=1
j=1
k=1
read *,a
print *,x,y,z
write (unit=*,fmt=*) i,j,k
if (1.eq.2) then
 a=a
endif
end
