c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      complex,parameter::p=(1,1)
      call cnt
      call var
      contains
      subroutine var
      type c1
        complex c11(-2:-1,-2:-1)
        complex c12(-2:-1)
      end type
      type c2
        type (c1):: c21(-2:-1,-2:-1)
        type (c1):: c22(-2:-1)
      end type
      complex h(36*2+1)
      complex g(36*2*2+1)
      type (c2)c31(-2:-1,-2:-1)
      type (c2)c32(-2:-1)
      c31=c2(c1(p,p),c1(p,p))
      c32=c2(c1(p,p),c1(p,p))
      write(11,*) c32,(2,0)
      rewind 11
      read (11,*) h
      if (any(h(1:72)/=p))print *,'fail'
      if (h(73)/=2)print *,'fail'
      write(12,*) c31,(2,0)
      rewind 12
      read (12,*) g
      if (any(g(1:36*2*2)/=p))print *,'fail'
      if (g(36*2*2+1)/=2)print *,'fail'
      end subroutine
      subroutine cnt
      type c1
        complex c11(-2:-1,-2:-1)
        complex c12(-2:-1)
      end type
      type c2
        type (c1):: c21(-2:-1,-2:-1)
        type (c1):: c22(-2:-1)
      end type
      complex h(36*2+1)
      complex g(36*2*2+1)
      type (c2),parameter::c31(-2:-1,-2:-1)=c2(c1(p,p),c1(p,p))
      type (c2),parameter::c32(-2:-1)=c2(c1(p,p),c1(p,p))
      write(1,*) c32,(2,0)
      rewind 1
      read (1,*) h
      if (any(h(1:72)/=p))print *,'fail'
      if (h(73)/=2)print *,'fail'
      write(2,*) c31,(2,0)
      rewind 2
      read (2,*) g
      if (any(g(1:36*2*2)/=p))print *,'fail'
      if (g(36*2*2+1)/=2)print *,'fail'
      end subroutine
      end
