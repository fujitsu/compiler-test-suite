subroutine sub(a,b,c,t,N)
integer N
real,dimension(1:N) :: a,b,c,d
logical,dimension(1:N) :: t
where (t)
  c = a + b
  d = a + b
elsewhere
  c = a - b
  d = a - b
endwhere
c = c + d
end subroutine

program main
integer,parameter :: N=100
real,dimension(1:N) :: a,b,c
logical,dimension(1:N) :: t
a = (/(int(mod(i,3)),i=1,N)/)
b = (/(int(mod(i,4)),i=1,N)/)
t = (a < b)
call sub(a,b,c,t,N)
if (int(sum(c)) == 360) then
  print *,"ok"
else
  print *,"ng",int(sum(c))
endif
end program
