 integer, save :: i, n=0
 complex :: b,a(2)
  a = (1,3)
  b=(5,6)
  do 99, i = a(2)%re, b%im
  99 n=n+a(2)
  if(n/=6) print*, "101"
  PRINT*,"PASS"
end
