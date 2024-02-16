#define z z12345678
      integer:: z=100000
      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1 
#line 500

      if (k/=11)print *,k

      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z +1
     &1
      if (k/=11)print *,k

      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1 
c     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx123456
#line 600

      if (k/=11)print *,k

      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z +1
     &1
      if (k/=11)print *,k
      print *,'pass'

      end
      subroutine sub
      integer::no_used
      end
