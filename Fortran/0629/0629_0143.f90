integer,dimension(32):: a, b

do ii=1, 32
  goto (100, 200, 300, 400), mod(ii, 6)
  a(ii) = 0
  cycle
 100 continue
  a(ii) = 1
  cycle
 200 continue
  a(ii) = 2
  cycle
 300 continue
  a(ii) = 3
  cycle
 400 continue
  a(ii) = 4
  cycle
end do

do ii=1, 32
  goto (101, 201, 301, 401), mod(ii, 6)
  b(ii) = 0
  cycle
 101 continue
  b(ii) = 1
  cycle
 201 continue
  b(ii) = 2
  cycle
 301 continue
  b(ii) = 3
  cycle
 401 continue
  b(ii) = 4
  cycle
end do

print *,a
print *,b
end
