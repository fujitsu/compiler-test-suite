program main
integer,parameter :: N=10
integer(kind=4),dimension(1:N) :: a,b1,b2
logical(kind=4),dimension(1:N) :: c
integer L,M,ii
b1 =  1
b2 = -1
ii = 2
c = .false.
a = 1
L = 10
M = ii-1
where (c(1:L))
  a(1:10) = b1(1:10)
elsewhere
  a(1:L) = b2(M:10)
endwhere
print *,a(1:10)
end

