
      parameter (iimax=20)
      parameter (imax=10, jmax=iimax, kmax=imax)
      real(8),parameter :: ANSWER=400.0
      real(8) :: result
      real(8) :: a(imax,kmax), b(kmax,jmax), c(imax,jmax)

      c=2.0
 20   continue
      result = sum(c)

      if( result .eq. ANSWER ) then
         print *,"ok"
      else 
         print *,"ng",result,ANSWER
      endif

      end
