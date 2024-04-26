      subroutine flx (m,n,np,ict)
      implicit none
      integer m,n,np,ict(10,10)
      integer icbmin, kflag(m,n,np+1)
      integer i,j,k,is
      real tda(m,n,np+1)
      real flxdnd(m,n,np+1)

      kflag = 3
      icbmin = ict(1,1)

      do is=1,2
        do k= icbmin, np
          do j= 1, n
            do i= 1, m
              if (kflag(i,j,k) .eq. 3) then
                tda(i,j,k)= tda(i,j,k-1)
              endif
            enddo
          enddo
        enddo

        do j=1, n
          do i=1, m
            flxdnd(i,j,1)=1.0
          enddo
        enddo
      enddo

      end subroutine

      integer ict(10,10)

      ict = 1
      m = 10
      n = 10
      np = 10
      call flx (m,n,np,ict)

      print*, "OK"
      end
