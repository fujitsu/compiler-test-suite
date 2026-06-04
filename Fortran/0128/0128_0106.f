      volatile a
      integer a
      type f90str1
         integer*4::k4
      end type
      integer b
      type(f90str1) v ;  pointer (r, v)

      r=loc(a)
      a=0

      do 10 i=1, 10
         a = v%k4
         b = v%k4
 10      a = v%k4 + i

      if (a == 55) then
         print *,'-- ok --'
      else
         print *,'-- ng --'
      endif

      if (b == 45) then
         print *,'-- ok --'
      else
         print *,'-- ng --'
      endif

      end
