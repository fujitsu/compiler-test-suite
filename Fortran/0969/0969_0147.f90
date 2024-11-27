interface
 subroutine psub01(i)
  integer :: i
 end subroutine
 subroutine sub01(i01)
  integer :: i01
 end subroutine
end interface

pointer :: psub01

integer :: ii01

psub01 => sub01

call psub01(ii01)

if (ii01.ne.100) print *,'no pass'

print *,'pass'

end

subroutine sub01(i01)
 integer :: i01
 i01 = 100
end subroutine
