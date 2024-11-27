integer,dimension(32):: a, b
integer err

!$omp parallel do
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
!$omp end parallel do

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

err = 0
do ii=1, 32
  if(a(ii) .ne. b(ii)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

