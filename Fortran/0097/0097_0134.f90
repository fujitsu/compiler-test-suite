interface
      subroutine ss(a ,b ,c)
      integer,contiguous::a(:,:,:)
      integer,contiguous::b(:,:,:)
      integer,contiguous::c(:,:,:)
      end subroutine
      subroutine ss2(a ,b ,c)
      integer::a(3,3,3)
      integer::b(3,3,3)
      integer::c(3,3,3)
      end subroutine
end interface

      call s1(2)
      print *,'pass'
      contains
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
      end subroutine
    end
      subroutine ss(a ,b ,c)
      integer,contiguous::a(:,:,:)
      integer,contiguous::b(:,:,:)
      integer,contiguous::c(:,:,:)
      call ss2(a ,b ,c)
      end subroutine

      subroutine ss2(a ,b ,c)
      integer::a(2,2,2)
      integer::b(2,2,2)
      integer::c(2,2,2)
       a =a +10
       b = b +10
       c = c + 10
      end subroutine
