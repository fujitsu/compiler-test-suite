       integer,target::a(5)=[1,2,3,4,5]
       integer::k=1
       call foo(a(::k))
       print *,'pass'
       contains
      subroutine foo(d)
      integer,contiguous::d(:)

        if (d(1)/=1 .or. d(2)/=2) print *,101
        if (d(3)/=3 .or. d(4)/=4) print *,103
        if (d(5)/=5 )print*,105
        if (loc(d).ne.loc(a)) print *,102
      end subroutine
      end


