character(4), external :: peprocp01

call csub01(peprocp01)

print *,'pass'

contains
 subroutine csub01(deproc01)
  character(4), external :: deproc01
 end subroutine
end

function peprocp01()
 character(4) :: peprocp01
end function
