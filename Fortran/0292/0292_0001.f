      subroutine s2(i)
      if (i.eq.1 ) return 
      call s1(i)
      end
      subroutine s1(i)      
      i=1
      call s2(i)
      end

      mi=1
      call s1(mi)
      if ( mi == 1 ) print *,'OK'
      end
