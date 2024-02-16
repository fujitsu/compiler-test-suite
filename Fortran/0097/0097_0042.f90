       integer,target::a(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       integer,target::a2(3,3)=reshape([1,2,3,4,5,6,7,8,9],[3,3])
       integer::k=2
       call foo(a(::k,::k),a2(::k,::k))
       if(a(1,1).ne.10)print*,101
       if(a(1,3).ne.10)print*,101
       if(a(3,1).ne.10)print*,101
       if(a(3,3).ne.10)print*,101
       if(a2(1,1).ne.20)print*,101
       if(a2(1,3).ne.20)print*,101
       if(a2(3,1).ne.20)print*,101
       if(a2(3,3).ne.20)print*,101
       print *,'pass'
       contains
      subroutine foo(d,e)
      integer,contiguous::d(:,:)
      integer,contiguous::e(:,:)
        if (loc(d).eq.loc(a)) print *,102
        if (loc(e).eq.loc(a2)) print *,103
        d = 10
        e = 20
      end subroutine
      end


