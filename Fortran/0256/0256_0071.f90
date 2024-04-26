integer,pointer::q(:,:)
       integer,target::c(3,3)=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,3])
       q=>c(1:3:2,1:3:2)
       call foo(q)
       if (q(1,1).ne.10) print *,105,q
       print *,'pass'
      contains
      subroutine foo(g)
      integer,optional,contiguous::g(:,:)
      if (present(g)) then
        if (g(1,1)/=1 .or. g(1,2)/=7) print *,101,g(1,1),g(1,2)
        g= 10
      end if
      end subroutine
      end
