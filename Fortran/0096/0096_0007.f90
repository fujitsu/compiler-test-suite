! DSE Case
program pro
type ty
  real(kind=4) :: cc1(3)
end type
type(ty),parameter :: obj = ty((/3.0,4.0,3.5/))
real(kind=4) :: res1 = LOG_GAMMA(obj%cc1(2))
if(.not.(res1>1.78 .and. res1<1.80)) print*,101
        print *,"pass"
end

