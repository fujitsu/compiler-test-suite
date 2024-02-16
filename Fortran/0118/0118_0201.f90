implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)/10000*2./

do concurrent(i=1:100)
  do concurrent(j=1:100)
    a(j,i) = b(j,i) + 3.
  end do
end do
print *,merge("OK","NG",all(a==5.0))
end
