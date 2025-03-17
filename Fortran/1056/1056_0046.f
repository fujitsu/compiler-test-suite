
      program main
      parameter (n=47)
      real*8 yyy(n,n),c_yyy(n,n)
      real*8 zzz(n,n),c_zzz(n,n)
      real*8 aaa(n,n),c_aaa(n,n)
      real*8 tmp
      real*8 s,c_s
      common /zzz/zzz
!$omp threadprivate (/zzz/)
      
      do k=1,n
        do j=1,n
          do i=1,n
            yyy(i,j)=float((j)*10+i)
            zzz(i,j)=float((j)*10+i)
            aaa(i,j)=0.0
            c_yyy(i,j)=float((j)*10+i)
            c_zzz(i,j)=float((j)*10+i)
            c_aaa(i,j)=0.0
          enddo
        enddo
      enddo

      s=0.0
      c_s=0.0

!$omp parallel do copyin(/zzz/) private(tmp) firstprivate(yyy) 
!$omp+lastprivate(aaa) reduction(+:s)
      do k=1,n
        call sub(tmp,yyy,aaa,s)
      enddo
!$omp end parallel do

      do k=1,n
        do j=1,n
          do i=1,n
            tmp = c_zzz(i,j)+c_yyy(i,j)
            c_aaa(i,j) = sqrt(tmp**2)
            c_s=c_s+c_aaa(i,j)
          enddo
        enddo
      enddo

      i_err=0
      if (s.ne.c_s) i_err=1
      do k=1,n
        do j=1,n
          do i=1,n
            if (aaa(i,j).ne.c_aaa(i,j)) i_err=1
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

      subroutine sub(tmp,yyy,aaa,s)
      parameter (n=47)
      real*8 yyy(n,n)
      real*8 zzz(n,n)
      real*8 aaa(n,n)
      real*8 tmp
      real*8 s
      common /zzz/zzz
!$omp threadprivate (/zzz/)
      
        do j=1,n
          do i=1,n
            tmp = zzz(i,j)+yyy(i,j)
            aaa(i,j) = sqrt(tmp**2)
            s=s+aaa(i,j)
          enddo
        enddo

      return
      end
