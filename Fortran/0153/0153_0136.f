         subroutine s1
         block
           integer:: x
           x=1
     1        +2
      if (x/=3) print *,101
      end block
      end
      call s1
      print *,'pass'
      end
