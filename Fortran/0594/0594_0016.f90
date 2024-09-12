module m
contains
subroutine sub()
  call s1()
 contains
 subroutine  inn()
    print*,"PASS"
 end
 function fun(f) result(res)
      procedure(inn),pointer,intent(in):: f
      integer::res
      call f()
      res =12
  end function
 subroutine s1()
  integer::x
  x = fun(inn)
  if(x.ne.12)print*,"101"
 end
  end
end module 
use m
 call sub()
 print*,"PASS"
 end

