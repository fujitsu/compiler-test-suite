
      program main
      parameter (n=47)
      real*8 zzz(n,n,n),c_zzz(n,n,n)
      real*8 aaa(n,n,n),c_aaa(n,n,n)
      real*8 tmp
      
      do k=1,n
        do j=1,n
          do i=1,n
            zzz(i,j,k)=float((k)*100+(j)*10+i)
            aaa(i,j,k)=0.0
            c_zzz(i,j,k)=float((k)*100+(j)*10+i)
            c_aaa(i,j,k)=0.0
          enddo
        enddo
      enddo

!$omp parallel do
      do k=1,n
        call sub1(zzz,aaa,k)
      enddo
!$omp end parallel do

!$omp parallel do
      do k=1,n
        call sub1(zzz,aaa,k)
      enddo
!$omp end parallel do

!$omp parallel do
      do k=1,n
        call sub1(zzz,aaa,k)
      enddo
!$omp end parallel do

      do k=1,n
        do j=1,n
          do i=1,n
            tmp = c_zzz(i,j,k)+c_zzz(i,j,k)+c_zzz(i,j,k)
            c_aaa(i,j,k) = sqrt(tmp**2)
          enddo
        enddo
      enddo

      i_err=0
      do k=1,n
        do j=1,n
          do i=1,n
            if (aaa(i,j,k).ne.c_aaa(i,j,k)) i_err=1
          enddo
        enddo
      enddo

      if (i_err.eq.0) then
        write(6,*) "OK"
      else
        write(6,*) "NG"
      endif
      stop
      end

      subroutine sub1(zzz,aaa,k)
      parameter (n=47)
      real*8 zzz(n,n,n)
      real*8 aaa(n,n,n)
      
!$omp parallel do
        do j=1,n
          call sub2(zzz,aaa,k,j)
        enddo
!$omp end parallel do

      return
      end

      subroutine sub2(zzz,aaa,k,j)
      parameter (n=47)
      real*8 zzz(n,n,n)
      real*8 aaa(n,n,n)
      real*8 tmp
      
!$omp parallel do private(tmp)
          do i=1,n
            tmp = zzz(i,j,k)+zzz(i,j,k)+zzz(i,j,k)
            aaa(i,j,k) = sqrt(tmp**2)
          enddo
!$omp end parallel do

      return
      end
