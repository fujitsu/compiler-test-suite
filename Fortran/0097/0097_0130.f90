     subroutine s1(k)
     integer,pointer::p(:,:,:)
     integer,target ::t(3,3,3)= 1
     integer,pointer::p2(:,:,:)
     integer,target ::t2(3,3,3)= 2
     integer,pointer::p3(:,:,:)
     integer,target ::t3(3,3,3)= 3
       if (k==1) then
         p=>t(1:3:k,1:3:k,1:3:k)
         p2=>t2(:,:,:)
         p3=>t3(k:3:k, k:3:k,k:3:k)
       else
         p=>t(1::k,1::k,1::k)
         p2=>t2(1::2,1::2,1::2)
         p3=>t3(::k,::k,::k)
       endif
       call ss(p,p2,p3) 
      contains
      subroutine ss(a ,b ,c)
      integer,contiguous::a(:,:,:)
      integer,contiguous::b(:,:,:)
      integer,contiguous::c(:,:,:)
      if (loc(t).ne.loc(a)) print *,102,loc(t),loc(a)
      if (loc(t2).ne.loc(b)) print *,103,loc(t2),loc(b)
      if (loc(t3).ne.loc(c)) print *,104,loc(t3),loc(c)
      call ss2(a ,b ,c)
      end subroutine
      subroutine ss2(a ,b ,c)
      integer::a(:,:,:)
      integer::b(:,:,:)
      integer::c(:,:,:)
      if (loc(t).ne.loc(a)) print *,102,loc(t),loc(a)
      if (loc(t2).ne.loc(b)) print *,103,loc(t2),loc(b)
      if (loc(t3).ne.loc(c)) print *,104,loc(t3),loc(c)
      end subroutine
      end subroutine
      call s1(1)
      print *,'pass'
    end

