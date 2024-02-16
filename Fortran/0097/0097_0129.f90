     subroutine s1(k)
     integer,pointer::p(:)
     integer,target ::t(5)=[1,2,3,4,5]
     integer,pointer::p2(:)
     integer,target ::t2(5)=[1,2,3,4,5]
     integer,pointer::p3(:)
     integer,target ::t3(5)=[1,2,3,4,5]
       if (k==1) then
         p=>t(1:3:k)
         p2=>t2(:)
         p3=>t3(k:3:k)
       else
         p=>t(1::k)
         p2=>t2(1::2)
         p3=>t3(::k)
       endif
       call ss(p(::k),p2,p3(::1)) 
      if(any(t.ne.[11,2,3,4,15]))print*,101
      if(any(t2.ne.[11,2,13,4,15]))print*,109
      if(any(t3.ne.[11,2,13,4,15]))print*,102
      contains
      subroutine ss(a ,b ,c)
      integer,contiguous::a(:)
      integer,contiguous::b(:)
      integer,contiguous::c(:)
      if (loc(t).eq.loc(a)) print *,102,loc(t),loc(a)
      if (loc(t2).eq.loc(b)) print *,103,loc(t2),loc(b)
      if (loc(t3).eq.loc(c)) print *,104,loc(t3),loc(c)
      a= [11,15]
      b= [11,13,15]
      c= [11,13,15]
      end subroutine
      end subroutine
      call s1(2)
      print *,'pass'
    end

