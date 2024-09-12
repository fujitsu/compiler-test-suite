subroutine sub01()
  print *,'pass'
end subroutine
module mod01
  interface
    subroutine proc01()
    end subroutine
  end interface
  procedure(proc01),pointer,save :: ppp01 => null()
  contains 
  subroutine msub()
    call ppp01()
  end subroutine
end module

subroutine exsub01
  use mod01
  procedure(proc01) :: sub01
  ppp01=>sub01
end
use mod01
call exsub01
call msub()
end
