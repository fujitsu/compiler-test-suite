subroutine sub
  integer(kind=1) :: ma = 1_1
  integer(kind=2) :: mb = 2_2
  integer(kind=4) :: mc = 3_4
  integer(kind=8) :: md = 4_8

  real(kind=4)  :: rb = -1.0_4
  real(kind=8)  :: rc = -2.0_8
  real(kind=16) :: rd = -3.0_16

  complex(kind=4)  :: ca = (1.0_4,  1.0_4)
  complex(kind=8)  :: cb = (2.0_8,  2.0_8)
  complex(kind=16) :: cc = (3.0_16, 3.0_16)

  logical(kind=1) :: la = .false._1
  logical(kind=2) :: lb = .true._2
  logical(kind=4) :: lc = .false._4
  logical(kind=8) :: ld = .true._8

  do i=1,2
     md = ma * mb * mc * md
     rd = rb * rc * rd
     cc = ca * cb * cc
  end do

  if (la .or. lc .or. lb .or. ld) then
    print *,md
    print *,rd
    print *,cc
 else
    print *,"NG"
 endif
end subroutine sub

subroutine sub2
  integer(kind=1) :: ma = 1_1
  integer(kind=2) :: mb = 2_2
  integer(kind=4) :: mc = 3_4
  integer(kind=8) :: md = 4_8

  real(kind=4)  :: rb = -1.0_4
  real(kind=8)  :: rc = -2.0_8
  real(kind=16) :: rd = -3.0_16

  complex(kind=4)  :: ca = (1.0_4,  1.0_4)
  complex(kind=8)  :: cb = (2.0_8,  2.0_8)
  complex(kind=16) :: cc = (3.0_16, 3.0_16)

  logical(kind=1) :: la = .false._1
  logical(kind=2) :: lb = .true._2
  logical(kind=4) :: lc = .false._4
  logical(kind=8) :: ld = .true._8

  do i=1,2
     md = ma * mb * mc * rb * rc
     cc = ca + cb + rd
  end do

  if (la .or. lc .or. lb .or. ld) then
    print *,md
    print *,cc
 endif
end subroutine sub2


call sub
call sub2
end
