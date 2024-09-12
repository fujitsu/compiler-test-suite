module mod01
 contains
  subroutine m01_sub01(dummy_func01)
   real,external :: dummy_func01
   entry ms01_ent01(dummy_func01)
  end subroutine
  subroutine m01_sub02()
   real,external :: dummy_func01
   entry ms01_ent02(dummy_func01)
  end subroutine
end module

use mod01

real,external :: dummy_func01

call ms01_ent01(dummy_func01)
call ms01_ent02(dummy_func01)

print *,'pass'

end

function dummy_func01()
 dummy_func01 = 1.0
end function
