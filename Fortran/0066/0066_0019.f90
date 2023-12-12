real a(10),n(10),j(10)
a = 0.0d0
n = 1.0d0 
j = 3.0d0 
nn = 10
do i=1,nn
  n(i) = n(i) + i
  j(i) = j(i) + i + 1
enddo
do i=1,nn
  a(i) = a(i) + n(i) * j(i)
enddo
if (sum(a) .eq. 700.0) then
  write(6,*) "ok"
else
  write(6,*) "ng"
endif  
end
