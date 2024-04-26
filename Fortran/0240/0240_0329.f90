real a,b,c,x
a=1
b=2
c=3
x=4
i=8
j=9
k=10
if (1.eq.2) write (*,*) a,b,c
write (3, fmt= "(e7.4)") x
if (1.eq.2) write (*,10) i,j,k
10 format(1h,10i)
print *,'pass'
end
