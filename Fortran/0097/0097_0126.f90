     subroutine s1(k)
     integer,pointer::p(:)
     integer,target ::t(5)=[1,2,3,4,5]
       if (k==1) then
         p=>t(1:3:k)
       else
         p=>t(1::k)
       endif
       call ss(p) 
      if(any(t.ne.[11,12,13,4,5]))print*,101
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t)/=loc(a)) print *,102,loc(t),loc(b)
      a= [11,12,13]
      end subroutine
      end subroutine
      call s1(1)
      print *,'pass'
    end

