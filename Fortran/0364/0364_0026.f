      program main
      common  a,b,c,d
      real*8  a,b,c,d
      real*8  p(100,100)
      parameter (nloop=500000)
      integer i,j

      call  init_com()
      do 10 j=1,100,1
        do 10 i=1,100,1
          p(i,j) = a*b*c         
 10   continue

      do 30 j=1,nloop
        do 30 i=1,100                                                    
          a        =      p(5,i)
          b        =  a + p(5,i)
          c        =  b + p(6,i)
          a        =  c + p(7,i)
          b        =  a + p(8,i)
          c        =  b + p(9,i)
          a        =  c + p(10,i)
          b        =  a + p(11,i)
          c        =  b + p(12,i)
          d        =  c + p(13,i)
 30   continue
      write(6,*) d
      if( d .EQ. 10.0 ) then
        write(6,*) ' ok  '
      else
        write(6,*) ' ng  '
      endif 
      stop
      end
C
C
      subroutine init_com()
      common a,b,c,d
      real*8 a,b,c,d
C
      a=1.0
      b=1.0
      c=1.0
      d=0.0
      return
      end
