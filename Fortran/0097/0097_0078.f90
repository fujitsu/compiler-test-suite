subroutine s1(k)
    integer::k
     integer,pointer::p(:)
       integer,target ::t(5)=[1,2,3,4,5]
       if (k==1) then
         p=>t(1:5)
       else
         p=>t(1::2)
       endif
       call ss(p(::fun()))
     if (any(t/=[11,2,13,4,15])) print *,209,t
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t).eq.loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).eq.loc(b)) print *,201,loc(b)
     if (any(b(:3)/=[1,3,5])) print *,203
      b(:3) = [11,13,15]
      end subroutine
      function fun()
      integer::fun
      fun =2
      end function
      end subroutine
      call s1(1)
      print *,'pass'
      end

