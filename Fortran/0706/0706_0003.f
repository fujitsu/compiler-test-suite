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
      if (a(1)/='12345') print *,'fail'
      if (a(2)/='67890') print *,'fail'
      if (a(3)/='abcde') print *,'fail'
      if (b(1)/='234') print *,'fail'
      if (b(2)/='bcd') print *,'fail'
      if (c(1)/='12345') print *,'fail'
      if (c(2)/='abcde') print *,'fail'
      if (d   /='234') print *,'fail'
      if (e   /='bcd') print *,'fail'
      if (len(f)/=len(a(:)(2:4)))print *,'fail'
      if (f(1)/='234') print *,'fail'
      if (f(2)/='bcd') print *,'fail'
      if (len(g)/=len(a))print *,'fail'
      if (g(1)/='12345') print *,'fail'
      if (g(2)/='abcde') print *,'fail'
      if (len(h)/=len(a(1)(2:4)))print *,'fail'
      if (h   /='234') print *,'fail'
      if (len(i)/=len(a(3)(2:4)))print *,'fail'
      if (i   /='bcd') print *,'fail'
      end
