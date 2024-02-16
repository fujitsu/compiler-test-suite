subroutine sub(a,b,n)
real(8),dimension(1:n) :: a,b
real(8) tmp
i = 1
tmp = a(1) + b(1)
10 continue
a(i) = tmp
if (i.gt.n-1) goto 20
i = i + 1
tmp = a(i) + b(i)
goto 10
20 continue
end subroutine
program main
integer,parameter :: n=1000
integer,parameter :: ians=3000
real(8),dimension(1:n) :: a,b
a = 1.
b = 2.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
