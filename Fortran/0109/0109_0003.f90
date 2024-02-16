subroutine sub(a,b,c,t,N)
integer N
real,dimension(1:N) :: a,b,c,d,e,f,g
logical,dimension(1:N) :: t
where (t)
  c = a + b
  d = a + b
  e = a - b
  f = a * b
  g = (a + b) * (a - b)
elsewhere
  c = a - b
  d = a - b
  e = a + b
  f = a * b
  g = (a - b) * (a + b)
endwhere
c = c - d + g - e - f 
end subroutine

program main
integer,parameter :: N=100
real,dimension(1:N) :: a,b,c
logical,dimension(1:N) :: t
a = (/(int(mod(i,3)),i=1,N)/)
b = (/(int(mod(i,4)),i=1,N)/)
t = (a < b)
call sub(a,b,c,t,N)
if (int(sum(c)) == -353) then
  print *,"ok"
else
  print *,"ng",int(sum(c))
endif
end program
