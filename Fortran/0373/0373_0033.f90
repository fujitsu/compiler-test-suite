      program test_merge
      real(16) mr4(5,5)/1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0,0.0,0.0/
      real(16) rm4(5,5)/1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0/
      logical(4) ql4(5,5)/.false.,.true.,.false.,.true.,.false.,.false.,.false.,.false.,.true.,.false.,.true.,.false.,.true.,.false.,.false.,.false.,.false.,.true.,.false.,.true.,.false.,.true.,.false.,.false.,.false./
      real(16) a(5,5)

      a=merge(mr4,rm4,ql4)
      write(6,*) a
      stop
      end program test_merge
