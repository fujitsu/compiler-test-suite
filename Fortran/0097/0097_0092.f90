subroutine s1()
     integer,pointer::q
       integer,target ::t(5)=[1,2,3,4,5]
       allocate(q)
       q =1
       call ss(t(1:5:q))
       if(any(t.ne.[11,12,13,14,15]))print*,"101"
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t).ne.loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).ne.loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      b(1:5)= [11,12,13,14,15]
      end subroutine
      end subroutine
      call s1()
      print *,'pass'
      end

