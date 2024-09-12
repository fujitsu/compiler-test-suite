module m1
 interface
  subroutine xx
  end subroutine
 end interface

 procedure(xx) :: gg
end module

module m2
 use m1

 interface gnr
    procedure :: gg,s1,s2
 end interface

 contains
  subroutine s2(d)
    real :: d
    print*,"s2 subroutine m3",int(d)
  end subroutine

  subroutine s1(d)
    integer :: d
    print*,"s1 subroutine m2",d
  end subroutine
end module

use m2,gg=>gnr
call gg
call gg(2)
call gg(2.5)
end

subroutine gg
  print*,"m1 gnr subroutine"
end subroutine
