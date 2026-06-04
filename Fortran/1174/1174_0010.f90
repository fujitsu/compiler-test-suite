module m1
 contains
 subroutine s1()
  integer::x
  x = fun(inn)
  x = fun(ent)
  if(x.ne.12)print*,"101"
 end
 subroutine  inn(n)
    optional::n
    return
    entry ent(n)
    if (present(n)) then
    if (n/=1) print *,202
    endif
  end
  function fun(f) result(res)
     procedure(inn), pointer, intent(in):: f
      integer::res
      call f()
      call f(1)
      res =12
   end function
  end
 use m1
 call s1()
    print*,"sngg701h : pass"
 end

