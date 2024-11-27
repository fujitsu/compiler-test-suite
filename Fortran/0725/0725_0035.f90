program main
real,dimension(1:10)::a,b,c,d
real,parameter::ans =317.290375
real,parameter::diff=  0.000035

a = (/(real(mod(i,3)+1)*1.11,i=1,10)/)
b = a*a
c = b*b
d = c*c

      r = dot_product(a,b)
      goto 100
 200  continue
      r = r + dot_product(a,b)
      goto 400
 100  continue

 300  goto 200

 400  if (abs(r-ans)<=diff) then
         print *,'ok'
      else
         print *,'ng',r,ans
      endif
end
