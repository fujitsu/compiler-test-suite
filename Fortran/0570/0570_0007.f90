program pro
type ty
  real(kind=4) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/22.0,20.0,22.2/))
real(kind=4) :: res1 = ERFC_SCALED(obj%cc1(2))
if(.not.(res1>0.026 .and. res1<0.030)) print*,101
        print *,"pass"
end

