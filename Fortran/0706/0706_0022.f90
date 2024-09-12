c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      subroutine s1
      write (1,*) ((/i/),i=1,2)
      write (9,*)  1
      end
