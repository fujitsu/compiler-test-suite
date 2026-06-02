module m1
 contains
 subroutine s1()
  integer::x
interface
 subroutine  inn()
  end
 subroutine  ent()
  end
end interface
  x = fun(inn)
  x = fun(ent)
  if(x.ne.12)print*,"101"
 end
  function fun(f) result(res)
interface
 subroutine  inn()
  end
end interface
     procedure(inn), pointer, intent(in):: f
      integer::res
      call f()
      res =12
   end function
  end
 use m1
 call s1()
    print*,"sngg699h : pass"
 end
 subroutine  inn()
    entry ent()
  end

