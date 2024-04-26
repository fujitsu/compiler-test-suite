*
      real*4    rsans
      real*8    rdans
      real*8   rqans
      common   /ans/rqans , rdans , rsans

      rsans = 0.0e0
      rdans = 0.0d0
      rqans = 0.0d0

      write(6,*)'#####  - start #####'
      write(6,*)' '

      call  rssimp()
      call  rdsimp()
      call  rqsimp()

      call  check()

      write(6,*)' '
      write(6,*)'#####  -  end  #####'
      stop
      end
*
      subroutine rssimp()
      integer   n2 , n1
      real      func , a , b , h , s , t
      real*4    rsans
      real*8    rdans
      real*8   rqans
      common   /ans/rqans , rdans , rsans

      func(t) = sqrt(4.0-t**2)

      read(5,100) n2,a,b
  100 format(i8,2f10.5)

      n1 = n2/2-1
      h  = (b-a)/float(n2)
      sumo = 0.0
      sume = 0.0

      do 10 i=1,n1
        sumo = sumo+func(a+h*float(2*i-1))
        sume = sume+func(a+h*float(2*i))
   10 continue

      sumo = sumo+func(b-h)
      s    = (func(a)+func(b)+4.0*sumo+2.0*sume)*h/3.0

      rsans = s


      return
      end
*
      subroutine rdsimp()
      integer   n2 , n1
      double precision    func , a , b , h , s , t
      real*4    rsans
      real*8    rdans
      real*8   rqans
      common   /ans/rqans , rdans , rsans

      func(t) = dsqrt(4.0d0-t**2)

      rewind 5
      read(5,100) n2,a,b
  100 format(i8,2d10.5)

      n1 = n2/2-1
      h  = (b-a)/dble(float(n2))
      sumo = 0.0d0
      sume = 0.0d0

      do 10 i=1,n1
        sumo = sumo+func(a+h*dble(float(2*i-1)))
        sume = sume+func(a+h*dble(float(2*i)))
   10 continue

      sumo = sumo+func(b-h)
      s    = (func(a)+func(b)+4.0d0*sumo+2.0d0*sume)*h/3.0d0

      rdans = s

      return
      end
*
      subroutine rqsimp()
      integer   n2 , n1
      real*8   func , a , b , h , s , t
      real*4    rsans
      real*8    rdans
      real*8   rqans
      common   /ans/rqans , rdans , rsans

      func(t) = dsqrt(4.0d0-t**2)

      rewind 5
      read(5,100) n2,a,b
  100 format(i8,2d10.5)

      n1 = n2/2-1
      h  = (b-a)/dble(float(n2))
      sumo = 0.0d0
      sume = 0.0d0

      do 10 i=1,n1
        sumo = sumo+func(a+h*dble(float(2*i-1)))
        sume = sume+func(a+h*dble(float(2*i)))
   10 continue

      sumo = sumo+func(b-h)
      s    = (func(a)+func(b)+4.0d0*sumo+2.0d0*sume)*h/3.0d0

      rqans = s

      return
      end
*
      subroutine check()
      real*4    rsans
      real*8    rdans
      real*8   rqans , rsans2 , rdans2
      common   /ans/rqans , rdans , rsans

      rsans2 = dble(rsans)
      rdans2 = dble(rdans)

      if(abs(rqans-rsans2)/rqans .gt. 1.0d-6 ) goto 10
      if(abs(rqans-rdans2)/rqans .gt. 1.0d-14) goto 20

      write(6,*)'*****  ok - ok - ok   *****'
      return

   10 write(6,*)'?????  ng - ng - ng   ?????'
      write(6,*)'dble(rsans)=>',rsans2
      write(6,*)'rqans      =>',rqans
      return

   20 write(6,*)'?????  ng - ng - ng   ?????'
      write(6,*)'dble(rdans)=>',rdans2
      write(6,*)'rqans      =>',rqans

      return
      end
