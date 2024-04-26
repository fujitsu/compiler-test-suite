      integer*8 ::a(1000)=(/ (2,i=1,62),(1,i=1,938)/),c
      common/com/c

      c=1
      do i=1,1000
        c=c*a(i)
      end do
        
      if (c.ne.4611686018427387904_8)  stop 'ng' 

      print *,'ok'
      end
 
