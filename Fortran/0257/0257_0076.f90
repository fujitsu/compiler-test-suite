subroutine s1()
     integer,allocatable::q
       integer,target ::t(5)=[1,2,3,4,5]
       allocate(q)
       q =1
       call ss(t(1:5:q))
      contains
      subroutine ss(a)
      integer::a(5)
      if (loc(t)/=loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t)/=loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      end subroutine
      end subroutine
      call s1()
      print *,'pass'
      end

