      integer*8 ::a(1000)=(/(i,i=1,1000)/)
      integer*8 ::b(1000)=(/(i,i=1,1000)/),c
      common/com/c

      c=dot_product(a,b)
        
      if (c.ne.333833500)      stop 'ng' 

      print *,'ok'
      end
