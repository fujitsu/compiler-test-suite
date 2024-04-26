      program main
      go to 0094
 0092 ivcomp = 0
      go to 40090
 0094 go to ( 0092 )  2
      ivcomp = 1
40090 if ( ivcomp - 1 )  20090, 10090, 20090
10090 continue
      call subok
      go to 0101
20090 continue
      call subng2
 0101 continue
      end

      subroutine subok
      write(6,*) 'ok'
      return
      end
      subroutine subng2
      write(6,*) 'ng2'
      return
      end
