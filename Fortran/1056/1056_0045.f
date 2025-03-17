
      program main
      parameter (n=47)
      real*8 zzz(n,n),c_zzz(n,n)
      real*8 aaa(n,n,n),c_aaa(n,n,n)
      real*8 tmp
      common /zzz/zzz
      common /aaa/aaa
!$omp threadprivate (/zzz/)
      
      do k=1,n
        do j=1,n
          do i=1,n
            zzz(i,j)=float((j)*10+i)
            aaa(i,j,k)=0.0
            c_zzz(i,j)=float((j)*10+i)
            c_aaa(i,j,k)=0.0
          enddo
        enddo
      enddo

!$omp parallel do copyin(/zzz/)
      do k=1,n
        call sub1(k)
      enddo
!$omp end parallel do

      do k=1,n
        do j=1,n
          do i=1,n
            tmp = c_zzz(i,j)+c_zzz(i,j)+c_zzz(i,j)
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

      subroutine sub1(k)
      parameter (n=47)
      real*8 zzz(n,n)
      real*8 aaa(n,n,n)
      common /zzz/zzz
      common /aaa/aaa
!$omp threadprivate (/zzz/)
      
!$omp parallel do copyin(/zzz/)
        do j=1,n
          call sub2(k,j)
        enddo
!$omp end parallel do

      return
      end

      subroutine sub2(k,j)
      parameter (n=47)
      real*8 zzz(n,n)
      real*8 aaa(n,n,n)
      real*8 tmp
      common /zzz/zzz
      common /aaa/aaa
!$omp threadprivate (/zzz/)
      
!$omp parallel do private(tmp) copyin(/zzz/)
          do i=1,n
            tmp = zzz(i,j)+zzz(i,j)+zzz(i,j)
            aaa(i,j,k) = sqrt(tmp**2)
          enddo
!$omp end parallel do

      return
      end
