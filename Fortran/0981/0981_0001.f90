call sub(3)
end
subroutine sub(mmm)
  real(8),dimension(:),allocatable ::r1
  real(8),dimension(:),allocatable ::r2
  real(8),dimension(:),allocatable :: buf1,buf2
  real*8 rr1(3),rr2(3) 
   allocate(r1(3),r2(3))
   allocate(buf1(3), buf2(3))
    buf1 = 0.d0
    buf2 = 0.d0
    r1 = 1.d0
    r2 = 2.d0
!$omp parallel 
!$omp do reduction(+:buf1,buf2)
    do n=1,mmm
      buf1(n) = buf1(n) + r1(n)
      buf2(n) = buf2(n) + r2(n)
    enddo
!$omp end do
!$omp end parallel
    rr1 = buf1
    rr2 = buf2
    deallocate(buf1,buf2)
    if (rr1(1).ne.1.d0) write(6,*) "NG"
    if (rr2(1).ne.2.d0) write(6,*) "NG"
    print *,"pass"
end subroutine
