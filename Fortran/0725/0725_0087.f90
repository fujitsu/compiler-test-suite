program main
real,dimension(1:10)::a,b
real,dimension(1:10,1:10)::c,d
real,parameter::ans=7687.59131
real,parameter::diff=  0.001

a = (/(real(i)/1.1,i=1,10)/)
b = (/(real(i)/1.2,i=1,10)/)
c = reshape((/(real(i)/1.3,i=1,100)/),(/10,10/))
d = reshape((/(real(i)/1.4,i=1,100)/),(/10,10/))

r1 = sum(a)
r2 = sum(c)
r3 = sum(b)
r4 = sum(a+b)
r5 = sum(d)
r6 = sum(a-b)

r = r1+r2+r3+r4+r5+r6
if (abs(r-ans)<=diff) then
  print *,'ok'
else
  print *,'ng',r
endif
end
