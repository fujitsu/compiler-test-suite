      write(6,*) "OK"
      end
      subroutine s1
      real a(10)
      a=0
      write(6,*) a
      if (1.ge.2) go to 92
10    continue
92    continue
      if (1.ge.1) then
         if (je.eq.0) then
            write (6,*)   "aa"
         end if
         go to 10
      end if
      end
