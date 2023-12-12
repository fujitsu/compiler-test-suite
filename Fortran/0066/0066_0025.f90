real*8 a,n,j
a = 0.0d0
n = 1.0d0 
j = 3.0d0 
nn = 10
do i=1,nn
  a = i * n
  a = i * j *1
enddo
do i=1,nn
  a = a + n * j
enddo
if (a .eq. 61.0) then
  write(6, *) "ok"
else
  write(6, *) "ng"
endif
end
