      program main
      real*4 dans1
      real*4 ix,iy,iz,iw
      real*4 ix2,iy2,iz2,iw2
      real*4 total
      integer*4 i, N, pass
      data total/0.0/
      data pass/0/
      data N/233016/
      
      do i=1,N
         ix=mod(i,2)
         iy=mod(i,2)
         iz=mod(i,2)
         iw=mod(i,2)
         ix2=mod(i,2)
         iy2=mod(i,2)
         iz2=mod(i,2)
         iw2=mod(i,2)
         if ( pass .LT. 1 ) then
            pass = 1
         endif
         dans1 = ix+iy+iz+iw+ix2+iy2+iz2+iw2
         total = total + dans1
         if ( pass .LT. 2 ) then
            pass = 1
         endif
         dans1 = ix*iy*iz*iw*ix2*iy2*iz2*iw2
         total = total + dans1
         if ( pass .LT. 3 ) then
            pass = 1
         endif

      enddo

      if ( (abs(total - 1048572.0) > 0.1 ) .or. (pass .EQ. 0) ) then
         write(6,*) 'total= ',total
         write(6,*) "NG\n"
      else
         write(6,*) "OK\n"
      endif
      stop
      end

      subroutine get_dnum4( i1, i2, i3, i4, i5, i6, i7, i8, i )
      real*4 i1,i2,i3,i4,i5,i6,i7,i8,i
      if ( i .GE. 10000000 ) then
         i = i/10000000
      else if ( i .GE. 1000000 ) then
         i = i/1000000
      else if ( i .GE. 100000 ) then
         i = i/100000
      else if ( i .GE. 10000 ) then
         i = i/10000
      else if ( i .GE. 1000 ) then
         i = i/1000
      else if ( i .GE. 100 ) then
         i = i/100
      else if ( i .GE. 10 ) then
         i = i/10
      endif
      i1 = 10*i
      i2 = 20*i
      i3 = 30*i
      i4 = 40*i
      i5 = 10*i
      i6 = 20*i
      i7 = 30*i
      i8 = 40*i
      return
      end
