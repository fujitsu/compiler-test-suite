integer,pointer::p(:,:)
       integer,target::a(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       integer::k=2
       if(k==1)then
       p=>a(::2,::2)
       else
       p=>NULL()
       endif
       call foo(p)
       print *,'pass'
       contains
      subroutine foo(d)
      integer,optional::d(:,:)

      if (present(d)) then
      if(loc(d).ne.loc(p))print*,"102"
        if (d(1,1)/=1 .or. d(2,1)/=3) print *,101
      end if
      call foo2(d)

      end subroutine
      subroutine foo2(d)
      integer,optional,contiguous::d(:,:)

      if (present(d)) then
      if(loc(d).ne.loc(p))print*,"103"
        if (d(1,1)/=1 .or. d(2,1)/=3) print *,104
      end if

      end subroutine
      end

