      program main
      call no1
      stop
      end
      subroutine no1
      complex*8  cs1(100)
      complex*16 cd1(100)
      complex*16 cq1(100)
      cs1=(1.,1.)
      cd1=(1.,1.)
      cq1=(1.,1.)
      do 30 i=1,5
        if(nint(real(cs1(i))).ne.nint(real(cmplx(cd1(i))))) goto 999
        if(nint(real(cs1(i))).ne.nint(real(cmplx(cq1(i))))) goto 999
  30  continue
      write(6,*) '***** ok    *****'
      return
 999  write(6,*) '***** ng    *****'
      return
      end

