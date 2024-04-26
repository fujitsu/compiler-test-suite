
      parameter (iimax=20)
      parameter (imax=100, jmax=imax, kmax=imax)
      real(8),parameter :: ANSWER=60000.0
      real(8) :: result
      real :: a(imax,kmax), b(kmax,jmax), c(imax,jmax)

      c=0.0
      b=2.0
      a=3.0
      ii=1
 10   continue
        do j=1,jmax
          do k=1,kmax
            do i=1,imax
              c(i,j)=a(i,k)*b(k,j)
            enddo
          enddo
        enddo
      if (ii.ge.iimax) goto 20
      ii=ii+1
      goto 10
 20   continue

      result = sum(c)
      if( result .eq. ANSWER ) then
         print *,"ok"
      else 
         print *,"ng",result,ANSWER
      endif

      end
