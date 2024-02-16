       integer,target::a(5)=[1,2,3,4,5]
       integer::k=2
       call foo(a(::k))
       print *,'pass'
       contains
      subroutine foo(d)
      integer,contiguous::d(:)

        if (d(1)/=1 .or. d(2)/=3 .or. d(3)/=5) print *,101
        if (loc(d).eq.loc(a)) print *,103
      end subroutine
      end


