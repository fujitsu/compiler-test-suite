      program main
      integer i
      dimension a(10),b(10)
      integer sub1,sub2,sub3,sub4,sub5,sub6
      i=0
      call init_sub(a,b)
      i=i+sub1( 10.0 , 20.0 ) 
      i=i+sub2( a , b , 1, 10 )
      i=i+sub3( a , b , 1, 10 )
      i=i+sub4( a , b , 1, 10 )
      i=i+sub5( 10 )
      i=i+sub6()
      if ( i .eq. 7 ) then
         print *,'OK'
      else
         print *,'NG'
         print *,'i=',i
      endif
      end

      subroutine init_sub(a,b)
      real a(10),b(10)
      a=10.0
      b=20.0
      return
      end

      integer function sub1(a,b)
      integer sub11,sub12
      integer i
      i=0
      i=i+sub11(a,b)
      i=i+sub12(a,b)
      sub1=i
      return
      end

      integer function sub11(a,b)
      x = MAX(a,b)
      y = MIN(a,b)
      z = MAX(a,b)
      yy = y + y
      if ( x .EQ. yy .AND. x .EQ. z ) then
         sub11=1
      else
         sub11=0
      endif
      return
      end

      integer function sub12(a,b)
      c = b * 2
      x = MAX(a,b)
      y = MIN(a,c)
      z = MAX(b,a)
      yy = y + y
      if ( x .EQ. yy .AND. x .EQ. z ) then
         sub12=1
      else
         sub12=0
      endif
      return
      end

      integer function sub2(a,b,m,n)
      dimension a(10),b(10)
      do i=m,n
         x = MAX(a(i),b(i))
         y = MIN(a(i),b(i))
         z = MAX(a(i),b(i))
         yy = y + y
         if ( x .EQ. yy .AND. x .EQ. z ) then
            sub2=1
         else
            sub2=0
         endif
      enddo
      return
      end

      integer function sub3(a,b,m,n)
      dimension a(10),b(10)
      k = n
      do i = m,n
         x = MAX(a(k),b(k))
         y = MIN(a(k),b(k))
         z = MAX(a(k),b(k))
         yy = y + y
         if ( x .EQ. yy .AND. x .EQ. z ) then
            sub3=1
         else
            sub3=0
         endif
      enddo
      return
      end

      integer function sub4(a,b,m,n)
      dimension a(10),b(10)
      k = n
      do i=m,n
         x = MAX(a(i),b(i))
         y = MIN(a(i),b(i))
         z = MAX(a(i),b(i))
         x2 = x*2
         y2 = y*2
         z2 = z*2
         if ( y2 .EQ. x .AND. x .EQ. z ) then
            sub4=1
         else
            sub4=0
         endif
      enddo
      return
      end

      integer function sub5(n)
      k = n
      do i=1,10
         x = MAX(i,i*2)
         y = MIN(i,i*2)
         z = MAX(i,i*2)
         yy = y + y
         if ( x .EQ. yy .AND. x .EQ. z ) then
            sub5=1
         else
            sub5=0
         endif
      enddo
      return
      end

      integer function sub6()
      real x(10),z
      data z/0.0/
      call sub6_sub(ns,ne)
      do i = 1,ne
         x(i) = 2**i
         z = z + x(i)
      end do
      if ( z .eq. 2046.0 ) then
         sub6=1
      else
         sub6=0
      endif
      return
      end

      subroutine sub6_sub(n1,n2)
      n1=1
      n2=10
      return
      end
