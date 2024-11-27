real a,c
double precision f
parameter(a=5.0000000000001)
f=5
c=5.0000000000001
write(1,*)5.0000000000001-f
write(1,*)a-f
write(1,*)c-f
print *,'pass'
end
