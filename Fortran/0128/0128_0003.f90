real,dimension(1:11) :: r
r(11:1:-1) = 0.0
do n=1,10
  r(11:1:-2) = r(1:11:2) + 1.0
enddo
print *,r
end
