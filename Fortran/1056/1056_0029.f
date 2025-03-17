
      program main
      parameter (n=47)
      real*8 yyy(n,n),c_yyy(n,n)
      real*8 zzz(n,n,n),c_zzz(n,n,n)
      real*8 aaa(n,n),c_aaa(n,n)
      real*8 tmp
      
      do k=1,n
        do j=1,n
          do i=1,n
            yyy(i,j)=float((j)*10+i)
            zzz(i,j,k)=float((k)*100+(j)*10+i)
            aaa(i,j)=0.0
            c_yyy(i,j)=float((j)*10+i)
            c_zzz(i,j,k)=float((k)*100+(j)*10+i)
            c_aaa(i,j)=0.0
          enddo
        enddo
      enddo

!$omp parallel do private(tmp) lastprivate(aaa)
      do k=1,n
       do j=1,n
          do i=1,n
            tmp = zzz(i,j,k)+yyy(i,j)
            aaa(i,j) = sqrt(tmp**2)
          enddo
        enddo
      enddo
!$omp end parallel do

      do k=1,n
        do j=1,n
          do i=1,n
            tmp = c_zzz(i,j,k)+c_yyy(i,j)
            c_aaa(i,j) = sqrt(tmp**2)
          enddo
        enddo
      enddo

      i_err=0
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
