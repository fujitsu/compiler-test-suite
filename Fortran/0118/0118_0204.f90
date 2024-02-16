implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)/10000*2./

i=1
10 continue
  do concurrent(j=1:100)
    a(i,j) = b(i,j) + 3.
  end do
i=i+1
if (i<=100) goto 10
print *,merge("OK","NG",all(a==5.0))
end
