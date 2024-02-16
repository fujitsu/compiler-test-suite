#define z z12345678901234567890
      integer:: z=100000
      k = z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + z-z + 11
#100
      if (k/=11)print *,k
      print *,'pass'

      end
      subroutine sub
      integer::no_used
      end
