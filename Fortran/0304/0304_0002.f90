module m_stdio2
  implicit none
  public
  integer,  parameter :: DP      = selected_real_kind(13)
  integer,  parameter :: SP      = selected_real_kind(5)
  integer,  parameter :: PN      = SP
end module m_stdio2

module m_update_stress2
  use m_stdio2
  implicit none
  public
  integer , parameter :: LL     = 4

  real(PN) :: C1 (LL), C2 (LL)

  integer, parameter :: NXP0   = 1
  integer, parameter :: NXP1   = 100
  integer, parameter :: NYP0   = 1
  integer, parameter :: NYP1   = 100
  integer, parameter :: NZP0   = 1
  integer, parameter :: NZP1   = 100

  real(PN) :: RXX(LL, NXP0:NXP1,NYP0:NYP1,NZP0:NZP1)
  real(PN) :: RYY(LL, NXP0:NXP1,NYP0:NYP1,NZP0:NZP1)
  real(PN) :: RZZ(LL, NXP0:NXP1,NYP0:NYP1,NZP0:NZP1)

contains

  subroutine update_stress2( NX00, NX01, NY00, NY01, NZ00, NZ01 )
    integer, intent(in) :: NX00, NX01
    integer, intent(in) :: NY00, NY01
    integer, intent(in) :: NZ00, NZ01
    integer :: i, j, k, l

    do k = NZ00, NZ01
       do j = NY00, NY01
          do i = NX00, NX01
             do l=1, LL
                RXX(l,i,j,k) = C1(l) * RXX(l,i,j,k) - C2(l)
                RYY(l,i,j,k) = C1(l) * RYY(l,i,j,k) - C2(l)
                RZZ(l,i,j,k) = C1(l) * RZZ(l,i,j,k) - C2(l)
             end do
          end do
       end do
    end do

  end subroutine update_stress2

end module m_update_stress2

program main
use m_update_stress2
RXX = 1.
RYY = 2.
RZZ = 3.
C1 = 2.
C2 = 1.

call update_stress2(NXP0,NXP1,NYP0,NYP1,NZP0,NZP1)

print *, RXX(LL,NXP1,NYP1,NZP1)
print *, RYY(LL,NXP1,NYP1,NZP1)
print *, RZZ(LL,NXP1,NYP1,NZP1)
end program
