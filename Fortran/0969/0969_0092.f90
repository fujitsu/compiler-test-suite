type ty01
 sequence
 integer :: i01
end type
type (ty01) :: t1m

contains

 subroutine csub01()
  type ty01
   sequence
   integer :: i01
  end type
  type (ty01) :: t1s
  print *,merge(t1m, t1s, .true.)
 end subroutine



end
