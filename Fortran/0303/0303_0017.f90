real*8 a(10), b(10)
call sub1(a,b,10)
call sub2(a,b,10)
call sub3(a,b,10)
call sub4(a,b,10)
call sub5(a,b,10)
call sub6(a,b,10)
call sub7(a,b,10)
call sub8(a,b,10)
print *,"pass"
end

subroutine sub1(a,b,n)
  real*8 a(n),b(n)
  goto 501
!$omp parallel do
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end parallel do
501  continue
end subroutine

subroutine sub2(a,b,n)
  real*8 a(n),b(n)
  goto 502
!$omp do
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end do
502  continue
end subroutine

subroutine sub3(a,b,n)
  real*8 a(n),b(n)
  goto 503
!$omp master
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end master
503  continue
end subroutine

subroutine sub4(a,b,n)
  real*8 a(n),b(n)
  goto 504
!$omp critical
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end critical
504  continue
end subroutine

subroutine sub5(a,b,n)
  real*8 a(n),b(n)
  goto 505
!$omp sections
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end sections
505  continue
end subroutine

subroutine sub6(a,b,n)
  real*8 a(n),b(n)
  goto 506
!$omp single
 do i = 1,n
    a(i) = b(i)
 enddo
!$omp end single
506  continue
end subroutine

subroutine sub7(a,b,n)
  real*8 a(n),b(n)
  goto 507
!$omp workshare
  forall (i=1:n) a(i)=b(i)
!$omp end workshare
507  continue
end subroutine

subroutine sub8(a,b,n)
  real*8 a(n),b(n)
  goto 508
!$omp do ordered
 do i = 1,n
    a(i) = b(i)
!$omp ordered
    do j = 1,n
       a(j) = b(j)
    enddo
!$omp end ordered
 enddo
!$omp end do
508  continue
end subroutine
