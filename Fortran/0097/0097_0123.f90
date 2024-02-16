integer,pointer::p(:,:)
       integer,target::a(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       integer::k=1
       if(k==1)then
       p=>a(::2,::2)
       else
       p=>NULL()
       endif
       call foo(p)
       print *,'pass'
       if(a(1,1).ne.11)print*,"101"
       if(a(2,1).ne.2)print*,"101"
       if(a(3,1).ne.13)print*,"101"
       if(a(1,2).ne.4)print*,"101"
       if(a(1,3).ne.17)print*,"101"
       if(a(2,3).ne.8)print*,"101"
       if(a(3,3).ne.19)print*,"101"
       contains
      subroutine foo(d)
      integer,contiguous,optional::d(:,:)

      if (present(d)) then
      if(loc(d).eq.loc(p))print*,"102"
        if (d(1,1)/=1 .or. d(2,1)/=3) print *,101
      end if
      call foo2(d)

      end subroutine
      subroutine foo2(d)
      integer,optional,contiguous::d(:,:)

      if (present(d)) then
      if(loc(d).eq.loc(p))print*,"103"
        if (d(1,1)/=1 .or. d(2,1)/=3) print *,104
        d =d +10
      end if

      end subroutine
      end

