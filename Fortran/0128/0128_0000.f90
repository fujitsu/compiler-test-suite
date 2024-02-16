real,dimension(10) :: r
r(10:1:-1) = 0.0
do n=1,10
  r(10:1:-1) = r + 1.0
enddo
print *,r
end
