program main
real,dimension(1:10)::a,b,c,d
real,parameter::ans =59.8950119
real,parameter::diff= 0.0000115

a = (/(real(mod(i,2)+1)*1.1,i=1,10)/)
b = a*a
c = b*b
d = c*c

      r = dot_product(a,b)
      goto 100
 200  continue
      r = r + dot_product(a,b)
      goto 300
 100  continue

 300  goto 400

 400  if (abs(r-ans)<=diff) then
         print *,'ok'
      else
         print *,'ng',r,ans
      endif
end
