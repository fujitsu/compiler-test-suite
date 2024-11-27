program main
real,dimension(1:100)::a,b,c,d,e,f,g
real w1,w2,w3,w4,w5,w6,w7,w
call initdata()

w1=sum(a+b);w2=sum(b+c);w3=dot_product(c,d);w4=dot_product(d,e);w5=product(e+f);w6=sum(f+g);w7=sum(g+a)

w = w1-w2+w3-w4+w5-w6+w7

if (int(w)==13702) then
  print *,'ok'
else
  print *,'ng',w
endif

contains
subroutine initdata()
a = 0.1
b = 0.2
c = 0.3
d = 0.4
e = 0.5
f = 0.6
g = 0.7
end subroutine
end program
