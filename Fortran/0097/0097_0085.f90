subroutine s1(k)
     type ty
     integer::k 
     end type
    type(ty)::obj
     integer,pointer::p(:)
       integer,target ::t(5)=[1,2,3,4,5]
        obj%k = 1
       if (k==1) then
         p=>t(1:5)
       else
         p=>t(1::2)
       endif
       call ss(p(::obj%k))
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t)/=loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t)/=loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      end subroutine
      end subroutine
      call s1(1)
      print *,'pass'
      end

