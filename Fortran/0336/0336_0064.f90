program main
integer,parameter :: N=10
integer(kind=4),dimension(1:N) :: a,b1,b2
logical(kind=4),dimension(1:N) :: c
integer L,M
integer sub1, sub2
b1 =  1
b2 = -1
c = .false.
a = 1
L = sub1()
M = sub2()
where (c(1:L))
  a(1:L) = b1(1:L)
elsewhere
  a(1:L) = b2(M:10)
endwhere
print *,a(1:10)
end

integer function sub1()
sub1 = 10
end

integer function sub2()
sub2 = 1
end
