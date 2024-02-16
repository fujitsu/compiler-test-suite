implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)/10000*2./

do concurrent(i=1:100)
   j=1 
10 continue   
   a(i,j) = b(i,j) + 3.
   j=j+1
   if(j<=100) goto 10
end do
print *,merge("OK","NG",all(a==5.0))
end
