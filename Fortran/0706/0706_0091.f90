c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      call cnt
      call var
      end
      subroutine var
      type c1
        integer c11(-2:-1,-2:-1)
        integer c12(-2:-1)
      end type
      type c2
        type (c1):: c21(-2:-1,-2:-1)
        type (c1):: c22(-2:-1)
      end type
      integer h(36*2+1)
      integer g(36*2*2+1)
      type (c2)c31(-2:-1,-2:-1)
      type (c2)c32(-2:-1)
      c31=c2(c1(1,1),c1(1,1))
      c32=c2(c1(1,1),c1(1,1))
      write(11,*) c32,2
      rewind 11
      read (11,*) h
      if (any(h(1:72)/=1))print *,'fail'
      if (h(73)/=2)print *,'fail'
      write(12,*) c31,2
      rewind 12
      read (12,*) g
      if (any(g(1:36*2*2)/=1))print *,'fail'
      if (g(36*2*2+1)/=2)print *,'fail'
      end
      subroutine cnt
      integer,parameter::a(-2:-1,-2:-1)=1
      integer,parameter::b(-2:-1)=1
      type c1
        integer c11(-2:-1,-2:-1)
        integer c12(-2:-1)
      end type
      type c2
        type (c1):: c21(-2:-1,-2:-1)
        type (c1):: c22(-2:-1)
      end type
      integer h(36*2+1)
      integer g(36*2*2+1)
      type (c2),parameter::c31(-2:-1,-2:-1)=c2(c1(1,1),c1(1,1))
      type (c2),parameter::c32(-2:-1)=c2(c1(1,1),c1(1,1))
      write(1,*) c32,2
      rewind 1
      read (1,*) h
      if (any(h(1:72)/=1))print *,'fail'
      if (h(73)/=2)print *,'fail'
      write(2,*) c31,2
      rewind 2
      read (2,*) g
      if (any(g(1:36*2*2)/=1))print *,'fail'
      if (g(36*2*2+1)/=2)print *,'fail'
      end
