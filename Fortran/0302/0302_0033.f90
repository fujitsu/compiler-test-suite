program main
  complex(kind=16) c
  complex(kind=16) res1,res2,res3
  c = (4.0,2.0)
  call sub1(res1,c)
  call sub2(res2,c)
  call sub3(res3,c)
  print *, 'OK'
end program main

subroutine sub1(res, c)
  complex(kind=16) res, c
  res = c**2.0 * c**3.0 + c**4.0 / c**10
end subroutine sub1

subroutine sub2(res, c)
  complex(kind=16) res, c
  res = c**2.0 * c**3.0 + c**4.0 / c**10
end subroutine sub2

subroutine sub3(res, c)
  complex(kind=16) res, c
  integer i, j, k
  do i=1,1
     do j=1,1
        do k=1,1
!$omp parallel
!$omp critical
           res = c**2.0 * c**3.0 + c**4.0 / c**10
!$omp end critical
!$omp end parallel
        enddo
     enddo
  enddo
end subroutine sub3
