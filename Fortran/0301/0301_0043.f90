real,dimension(5) :: r
r(5:1:-1) = 0.0
do n=1,10
  r(5:1:-1) = r + 1.0
enddo
print *,r
end
