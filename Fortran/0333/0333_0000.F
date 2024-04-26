#define z z12345678
      integer:: z=100000
      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
#line 500
     &00000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +   1
     &1 - 100000     

      if (k/=11)print *,101,k

      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &00000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +   1
#line 600
     &1 - 100000

      if (k/=11)print *,102,k

      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z +1
     &1
      if (k/=11)print *,103,k

      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
#line 700
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
     &1 
c     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx123456
#line 800

      if (k/=11)print *,104,k

      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z +1
#line 900
     &1
      if (k/=11)print *,105,k

      k = 100000 - 100000 + 100000 - 100000 + 100000 - 100000 + 100000 -
     &100000  + 100000 - 100000 + 100000 - 100000 + 100000 - 100000 +  1
#line 950
     &1 
c     xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx123456

      if (k/=11)print *,106,k

      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z +1
#line 980
     &1+ z-z  + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z
      if (k/=11)print *,107,k

      print *,'pass'

      end
      subroutine sub
      integer::no_used
      end
