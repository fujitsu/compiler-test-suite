      program main
      integer a(10000),s

      a = 1

      s=0
      do i=1,10000
         s = s + a(i)
      enddo

      print *,s
      end
