      dimension a2(10),c(10)
      data a2/10*3./
      data c/10*2./

      do 32 i = 2,10
        b = a2(i)
        b = b + c(i-1)
        c(i) = b
   32 continue
      write(1,*) c
      call x
      print *,'pass'
      end
      subroutine x
      real g(10)
      rewind 1
      read(1,*) g
      if (any(abs(g-(/2.,5.,8.,11.,14.,17.,20.,23.,26.,29./))>0.0001))print *,'error'
      end
