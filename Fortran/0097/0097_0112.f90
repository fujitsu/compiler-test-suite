integer::p(10) =10
call foo(p)
if(p(1).ne.20)print*,101,p(1)
if(p(3).ne.20)print*,101,p(3)
if(p(5).ne.20)print*,101,p(5)
if(p(7).ne.20)print*,101,p(7)
if(p(9).ne.20)print*,101,p(9)
if(p(2).ne.10)print*,101,p(2)
       print *, 'pass'
       contains
       subroutine foo(d)
       integer,optional::d(:)
       if (present(d)) then
      if(rank(d).ne.1)print*,"101"
      if(any(ubound(d).ne.10))print*,"102",ubound(d)
       call foo2(d(1:10:2))
       end if
      end subroutine
     subroutine foo2(d)
      integer,optional,contiguous::d(:)

      if (present(d)) then
      if(rank(d).ne.1)print*,"101"
      if(any(ubound(d).ne.5))print*,"102",ubound(d)
      d =20
      end if
      end subroutine
      end

