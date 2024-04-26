#define a(i) b(i)
      subroutine s(a)
      c = a
     1 +1
     2 +1
     3 +1
      if (abs(c-a-3)>0.001)print *,101
      end
      call s(1.)
      print *,'pass'
      end
