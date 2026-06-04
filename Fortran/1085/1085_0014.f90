module mod
 contains
 subroutine sub1()
 end subroutine
 subroutine sub2(val)                   ! 15)
  real(8), intent(inout) :: val
 end subroutine
end
use mod
type  :: t_1                            ! 1)
 contains
  procedure, nopass :: sub1             ! 2) 4) 12)
  generic           :: set => sub1      ! 3) 4) 9)
end type
type, extends(t_1)   :: t_e_2           ! 5)
 contains
  procedure, nopass :: sub2             ! 6) 8)
  generic           :: set => sub2      ! 7) 8) 9)
end type
type, extends(t_e_2) :: t_e_3           ! 10)
 contains
  procedure, nopass :: sub1             ! 11) 12)
end type
type(t_e_3) :: aaa                      ! 13)
real(8) :: val
call aaa%set(val)                       ! 14) 15)
print *,'pass'
end
