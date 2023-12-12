type ty
  real(kind=4) :: xx1(3)
  real(kind=4) :: yy1(3)
end type
type(ty),parameter :: obj = ty((/2.0,2.0,2.0/),(/8.0,8.0,8.0/))
real :: res1 = HYPOT(obj%xx1(2),obj%yy1(3))
if(.not.(res1>8.22 .and. res1<8.26)) print *,101
        print *,"pass"

end

