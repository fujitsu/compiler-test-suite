call sub()
end

subroutine sub()
integer,dimension(1000):: result0, result1, result2, result3

!$ call omp_set_dynamic(.false.)
!$ call omp_set_num_threads(4)

!$omp parallel 
!$omp sections
  call sub2(result0, 1000)
!$omp section
  call sub2(result1, 1000)
!$omp section
  call sub2(result2, 1000)
!$omp section
  call sub2(result3, 1000)
!$omp end sections
!$omp end parallel

do i=1, 1000
  if(result0(i) .ne. i) then
    print *, 'NG'
    stop
  end if
  if(result1(i) .ne. i) then
    print *, 'NG'
    stop
  end if
  if(result2(i) .ne. i) then
    print *, 'NG'
    stop
  end if
  if(result3(i) .ne. i) then
    print *, 'NG'
    stop
  end if
end do

print *, 'pass'
end

recursive subroutine sub2(res, n)
integer,dimension(*):: res
integer n

res(n) = n

if(n .ne. 1) call sub2(res, n-1)

end

