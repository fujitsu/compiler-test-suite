subroutine sub(a,b,c,N)
integer N
real,dimension(1:N) :: a,b,c
where (a(21:30) /= b(21:30))
  a(2:11) = a(1:10) + b(1:10)
elsewhere
  a(41:50) = a(40:49) + b(1:10)
endwhere
c = a
end subroutine

program main
integer,parameter :: N=100
real,dimension(1:N) :: a,b,c
a = (/(int(mod(i,3)),i=1,N)/)
b = (/(int(mod(i,4)),i=1,N)/)
call sub(a,b,c,N)
if (int(sum(a)) == 114) then
  print *,"ok"
else
  print *,"ng",int(sum(a))
endif
end program
