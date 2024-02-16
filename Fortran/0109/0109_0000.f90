subroutine sub(a,b,c,N)
integer N
real,dimension(1:N) :: a,b,c
where (a /= b)
  c = a
elsewhere
  c = b
endwhere
end subroutine

program main
integer,parameter :: N=100
real,dimension(1:N) :: a,b,c
a = 1._4
b = 2._4
call sub(a,b,c,N)
if (int(sum(a)) == 100) then
  print *,"ok"
else
  print *,"ng"
endif
end program
