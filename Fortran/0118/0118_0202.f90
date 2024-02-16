implicit none
integer(8)::i,j
real*8 a(100,100)
real*8 b(100,100)/10000*2./

do concurrent(i=1:100,j=1:100)
  a(j,i) = b(j,i) + 3.
end do

do concurrent(j=1:100,i=1:100)
  a(j,i) = a(j,i) + 1.
end do

print *,merge("OK","NG",all(a==6.0))

end
