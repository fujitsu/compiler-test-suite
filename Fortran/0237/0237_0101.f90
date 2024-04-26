      subroutine test(m, n, a, lda, b, ldb)
      implicit none
      integer m, n, lda, ldb
      real(8) a(lda,n), b(ldb,m)
      integer, parameter :: nblk = 32
      integer i, j, is, js ,iw

!$omp parallel do default(none) collapse(2) &
!$omp  & private(i,j,is,js) shared(m,n,a,b)
      do is = 1, m, nblk
        do js = 1, n, nblk
          do i = is, min(is + nblk - 1, m)
            do j = js, min(js + nblk - 1, n)
              b(j,i) = a(i,j)
            enddo
          enddo
        enddo
      enddo

!$omp parallel do default(none) collapse(1) &
!$omp  & private(i,j,is,js) shared(m,n,a,b)
      do is = 1, m, nblk
        do js = 1, n, nblk
          do i = is, min(is + nblk - 1, m)
            do j = js, min(js + nblk - 1, n)
              b(j,i) = a(i,j)
            enddo
          enddo
        enddo
      enddo

!$omp parallel do default(none) collapse(2) &
!$omp  & private(i,j,is,js,iw) shared(m,n,a,b)
   do iw= 1,m,nblk
      do is = 1, m, nblk
        do js = 1, n, nblk
          do i = is, min(is + nblk - 1, m)
            do j = js, min(js + nblk - 1, n)
              b(j,i) = a(i,j)
            enddo
          enddo
        enddo
      enddo
    enddo

!$omp parallel do default(none) collapse(2) &
!$omp  & private(i,j,is,js,iw) shared(m,n,a,b)
      do is = 1, m, nblk
   do iw= 1,m,nblk
        do js = 1, n, nblk
          do i = is, min(is + nblk - 1, m)
            do j = js, min(js + nblk - 1, n)
              b(j,i) = a(i,j)
            enddo
          enddo
        enddo
      enddo
    enddo

!$omp parallel do default(none) collapse(2) &
!$omp  & private(i,j,is,js,iw) shared(m,n,a,b)
        do js = 1, n, nblk
      do is = 1, m, nblk
   do iw= 1,m,nblk
          do i = is, min(is + nblk - 1, m)
            do j = js, min(js + nblk - 1, n)
              b(j,i) = a(i,j)
            enddo
          enddo
        enddo
      enddo
    enddo
      end
print *,'pass'
end

