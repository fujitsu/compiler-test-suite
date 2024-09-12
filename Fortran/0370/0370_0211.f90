
module mod
  type, public :: ty0
     logical(kind=2) :: ml0 = .TRUE.
     integer(kind=4),dimension(3) :: mi0 = (/5,6,7/)
     real(kind=8),dimension(3) :: mr0 = (/1.0,2.0,3.0/)
     logical(kind=2) :: ml1 = .FALSE.
  end type ty0

  type, private :: ty1
     logical(kind=2) :: ml0 = .TRUE.
     integer(kind=4),dimension(3) :: mi0 = (/3,2,1/)
     real(kind=8),dimension(3) :: mr0 = (/6.0,5.0,4.0/)
     logical(kind=2) :: ml1 = .FALSE.
  end type ty1

contains
  subroutine msub
    type(ty1),target,save :: strm
    type(ty1),pointer :: pp=>strm
    print *,"<msub>"
    print *,pp
  end subroutine msub
end module mod

program xyz
  use mod
  type(ty0),target  :: str0
  type(ty0),pointer :: strpp0=>str0
  
  print *,strpp0%ml0
  print *,strpp0%mi0
  print *,strpp0%mr0
  print *,strpp0%ml1

  call msub
end program xyz
