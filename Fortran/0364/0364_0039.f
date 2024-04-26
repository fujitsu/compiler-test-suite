      program main
      real*4 dans1
      real*4 ix(10),iy(10),iz(10),iw(10)
      real*4 ix2(10),iy2(10),iz2(10),iw2(10)
      real*4 total
      integer*4 i, j, N, pass
      data total/0.0/
      data pass/0/
      data N/2000000/
      
      do i=1,N
         j=mod(i,10)+1
         k=mod(i,10)+1
         ix(j)=mod(i+1,2)
         iy(j)=mod(i+2,2)
         iz(j)=mod(i+3,2)
         iw(j)=mod(i+4,2)
         ix2(j)=mod(i+5,2)
         iy2(j)=mod(i+6,2)
         iz2(j)=mod(i+7,2)
         iw2(j)=mod(i+8,2)
         if ( pass .LT. 1 ) then
            pass = 1
         endif
         dans1 = ix(j)+iy(j)+iz(j)+iw(j)+ix2(j)+iy2(j)+iz2(j)+iw2(j)
         total = total + dans1
         if ( pass .LT. 2 ) then
            pass = 1
         endif
         dans1 = ix(k)*iy(k)*iz(k)*iw(k)*ix2(k)*iy2(k)*iz2(k)*iw2(k)
         total = total + dans1
         if ( pass .LT. 3 ) then
            pass = 1
         endif

      enddo

      if ( (total .NE. 8000000.0 ) .or. (pass .EQ. 0) ) then
         write(6,*) "NG\n"
         write(6,*) 'total= ',total
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

      subroutine sub(j,k)
      integer j,k
      j=2
      k=2
      return
      end
