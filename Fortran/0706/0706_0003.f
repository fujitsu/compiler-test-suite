      call s1
      print *,'pass'
      end
      subroutine s1
      character*5,parameter,dimension(3)::a=(/'12345','67890','abcde'/)
      character*3,parameter,dimension(2)::b=a(1:3:2)(2:4)
      character*5,parameter,dimension(2)::c=a(1:3:2)
      character*3,parameter             ::d=a(1)(2:4)
      character*3,parameter             ::e=a(3)(2:4)
      character*(*),parameter,dimension(2)::f=a(1:3:2)(2:4)
      character*(*),parameter,dimension(2)::g=a(1:3:2)
      character*(*),parameter             ::h=a(1)(2:4)
      character*(*),parameter             ::i=a(3)(2:4)
      if (a(1)/='12345') call errtra
      if (a(2)/='67890') call errtra
      if (a(3)/='abcde') call errtra
      if (b(1)/='234') call errtra
      if (b(2)/='bcd') call errtra
      if (c(1)/='12345') call errtra
      if (c(2)/='abcde') call errtra
      if (d   /='234') call errtra
      if (e   /='bcd') call errtra
      if (len(f)/=len(a(:)(2:4)))call errtra
      if (f(1)/='234') call errtra
      if (f(2)/='bcd') call errtra
      if (len(g)/=len(a))call errtra
      if (g(1)/='12345') call errtra
      if (g(2)/='abcde') call errtra
      if (len(h)/=len(a(1)(2:4)))call errtra
      if (h   /='234') call errtra
      if (len(i)/=len(a(3)(2:4)))call errtra
      if (i   /='bcd') call errtra
      end
