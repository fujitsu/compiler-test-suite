      real*4     a
      integer*4  i

      i = log10(1000.0)
      a = 3.0d0**i

      if (a .eq. 27.0) then
        print *, '*** ok!! ***'
      else
        print *, '*** ng?? ***'
      endif

      end
