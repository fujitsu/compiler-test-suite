program main
real,dimension(1:100)::a,b,c,d,e,f,g
real r1,r2,r3,r4,r5,r6,r7,r
real w1,w2,w3,w4,w5,w6,w7,w
real,parameter::diff=0.001
call initdata()

r1=sum(a);r2=sum(b);r3=sum(c);r4=sum(d);r5=sum(e);r6=sum(f);r7=sum(g);w1=sum(a+b);w2=sum(b+c);w3=sum(c+d);w4=sum(d+e);w5=sum(e+f);w6=sum(f+g);w7=sum(g+a)

r = r1+r2+r3+r4+r5+r6+r7
w = w1+w2+w3+w4+w5+w6+w7

if (abs((r*2) - w) <= diff) then
  print *,'ok'
else
  print *,'ng',r,w
endif
contains
subroutine initdata()
a = 1.1
b = 1.2
c = 1.3
d = 1.4
e = 1.5
f = 1.6
g = 1.7
end subroutine
end program
