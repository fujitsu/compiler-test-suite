      program test_merge
      integer(8) mr4(5,5)/1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,1.0,1.0,0.0,0.0,0.0,1.0,0.0,0.0/
      integer(8) rm4(5,5)/1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0/
      logical(8) ql4(5,5)/.false.,.true.,.false.,.true.,.false.,.false.,.false.,.false.,.true.,.false.,.true.,.false.,.true.,.false.,.false.,.false.,.false.,.true.,.false.,.true.,.false.,.true.,.false.,.false.,.false./
      real(16) a(5,5)

      a=merge(mr4,rm4,ql4)
      write(6,*) a
      stop
      end program test_merge
