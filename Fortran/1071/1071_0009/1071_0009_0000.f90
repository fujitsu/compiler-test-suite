Module mod
contains
  recursive subroutine s()
    if(fun(act) .ne. 6)print*,"NG"
    print*,"PASS"
  contains
    recursive function act(d)
      integer :: d
      integer :: act
      act=d+2
    end function act
  end subroutine s

  recursive function fun(dmy)
    interface
       recursive function dmy(x)
         integer :: x
         integer :: dmy
       end function dmy
    end interface
    fun=dmy(4)
  end function fun
end module mod

subroutine sub
use mod
call s()
end 
