      character*2 c
      c="aa"
      call sub(c,len(c))
      end
      subroutine sub(c,l)
      character*(l) c
      print *,l
      end

