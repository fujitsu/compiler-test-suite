      program main
      character ch01(101,61),ch02(101,61)

      call sub01(ch01)
      call sub02(ch02)
      do 10 i=1,61
         do 10 j=1,101
 10         if(ch01(j,i) .ne. ch02(j,i)) goto20
      write(6,*)'  ***** ok *****  '
      goto 30
 20   write(6,*)'  ***** ng *****  '
 30   stop
      end
      
      subroutine sub01(ch00)
      character ch00(101,61)
      real*4 dx,dy,dp
      integer*4 ix,iy,i,j
      data pi/3.1415927/
      data dx,dy,dp/3.0,4.0,0.0/
      do 10 i=1,61
         do 10 j=1,101
 10         ch00(j,i)=' '
      do 20 i=1,5000
         ix=cos(dx*i/2500.0*pi)*50.0+51.5
         iy=sin((dy*i/2500.0+dp)*pi)*30.0+31.5
         ch00(ix,62-iy)='*'
 20   continue   
      return
      end

      subroutine sub02(arg)
      character ch00(101,61),arg(101,61)
      real*4 dx,dy,dp
      integer*4 ix,iy,i
      data pi/3.1415927/
      data dx,dy,dp/3.0,4.0,0.0/
      pointer(ptr,ch00)

      ptr=loc(arg(1,1))
      ch00=' '
      do 10 i=1,5000
         ix=cos(dx*i/2500.0*pi)*50.0+51.5
         iy=sin((dy*i/2500.0+dp)*pi)*30.0+31.5
         arg(ix,62-iy)='*'
 10      continue
      return
      end
