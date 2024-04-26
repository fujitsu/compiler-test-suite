program main
integer,parameter :: N=10
integer(kind=4),dimension(1:N) :: a,b1,b2
logical(kind=4),dimension(1:N) :: c
b1 = 1
b2 = -1
call w1(a,c,b1,b2)
end program

subroutine w1(a,c,b1,b2)
integer a(*)
integer b1(*)
integer b2(*)
logical c(*)
integer L,M
integer sub1, sub2

c(1:10) = .false.
a(1:10) = 0
L = sub1()
M = sub2()
where (c(1:L))
  a(1:L) = b1(1:L)
elsewhere
  a(1:L) = b2(M:10)
endwhere
print *,a(1:10)
end subroutine

integer function sub1()
sub1 = 10
end

integer function sub2()
sub2 = 1
end
