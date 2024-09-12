module m1
 contains
 subroutine s1()
  integer::x
  x = fun(inn)
  x = fun(ent)
  if(x.ne.12)print*,"101"
 end
 subroutine  inn()
    print*,"PASS"
    entry ent()
    print*,"PASS ent"
  end
  function fun(f) result(res)
     procedure(inn), pointer, intent(in):: f
      integer::res
      call f()
      res =12
   end function
  end
 use m1
 call s1()
 end

