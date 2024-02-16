real,dimension(1:11) :: r
call foo(n)
r(11:1:-1) = 0.0
do n=1,10
  r(n:1:-1) = r(1:n:1) + 1.0
enddo
print *,r
end

subroutine foo(n)
n = 11
end subroutine
