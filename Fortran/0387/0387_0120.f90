external :: eprocp01
pointer  :: eprocp01

call csub01(eprocp01)

print *,'pass'

contains
 subroutine csub01(dprocp01)
  external :: dprocp01
  pointer  :: dprocp01
 end subroutine
end
