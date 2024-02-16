subroutine s1()
     integer,pointer::q
       integer,target ::t(5)=[1,2,3,4,5]
       allocate(q)
       q =2
       call ss(t(1:5:q))
       if(any(t.ne.[11,2,13,4,15]))print*,"101"
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t).eq.loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).eq.loc(b)) print *,201,loc(b)
     if (any(b(:3)/=[1,3,5])) print *,203
      b(1:3)= [11,13,15]
      end subroutine
      end subroutine
      call s1()
      print *,'pass'
      end

