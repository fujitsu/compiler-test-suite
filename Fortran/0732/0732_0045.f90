FUNCTION REXPU() RESULT(fn_val)

IMPLICIT NONE
REAL :: fn_val

REAL, PARAMETER :: alog2 = 0.6931471805599453,  a =  5.7133631526454228,  &
                       b = 3.4142135623730950,  c = -1.6734053240284925,  &
                       p = 0.9802581434685472, aa =  5.6005707569738080,  &
                      bb = 3.3468106480569850, hh =  0.0026106723602095,  &
                      dd = 0.0857864376269050
REAL :: g, u, up, y
DO
  call random_number(u)
  if (u > 0.0) EXIT
END DO

g = c
DO
  u = u + u
  if (u >= 1.0) EXIT
  g = g + alog2
END DO

u = u - 1.0
if (u <= p) THEN
  fn_val = g + aa/(bb-u)
  return
END IF
DO
  call random_number(u)
  y = a/(b-u)
  call random_number(up)
  if ((up*hh + dd)*(b-u)**2 <= exp(-(y+c))) EXIT
END DO

fn_val = g + y

return
end FUNCTION REXPU

FUNCTION REXPS() RESULT(fn_val)
IMPLICIT NONE
REAL :: fn_val

REAL, PARAMETER :: alog2 = 0.6931471805599453,  a =  5.7133631526454228,  &
                       b = 3.4142135623730950,  c = -1.6734053240284925,  &
                       p = 0.9802581434685472, aa =  5.6005707569738080,  &
                      bb = 3.3468106480569850, hh =  0.0026106723602095,  &
                      dd = 0.0857864376269050
REAL :: g, u, up, y
DO
  call random_number(u)
  if (u > 0.0) EXIT
END DO

g = c
u = u + u
do while (u < 1.0)
   g = g + alog2
   u = u + u
end do
u = u - 1.0
if (u <= p) then
  fn_val = g + aa/(bb-u)
  return
end if

do
  call random_number(u)
  y = a/(b-u)
  call random_number(up)
  if ((up*hh + dd)*(b-u)**2 <= exp(-(y+c))) then
    fn_val = g + y
    return
  end if
end do

RETURN
end FUNCTION REXPS

MODULE common780
IMPLICIT NONE

REAL, SAVE, PUBLIC :: x

END MODULE common780

PROGRAM MAIN
USE common780
IMPLICIT NONE

INTEGER :: i, mtime0, mtime1, n
REAL    :: dt_lg, dta_lg, dt_eau, dta_eau, dt_eas, dta_eas

INTERFACE
  FUNCTION REXPU() RESULT(fn_val)
    IMPLICIT NONE
    REAL :: fn_val
  END FUNCTION REXPU

  FUNCTION REXPS() RESULT(fn_val)
    IMPLICIT NONE
    REAL :: fn_val
  END FUNCTION REXPS
END INTERFACE

n = 1000000
call msec(mtime0)
do i=1,n
  x = rexp_lg()
END DO
call msec(mtime1)
dt_lg = 0.001 * REAL(mtime1 - mtime0)
dta_lg = 1.E6 * dt_lg / REAL(n)
WRITE(1, *) 'Old logarithmic method:'
WRITE(1, *) '  LG Run time =', dt_lg, ' seconds'
WRITE(1, *) '  LG Average time =', dta_lg
call msec(mtime0)
do i=1,n
  x = rexpu()
END DO
call msec(mtime1)
dt_eau = 0.001 * REAL(mtime1 - mtime0)
dta_eau = 1.E6 * dt_eau / REAL(n)
WRITE(1, *) 'Unstructured:'
WRITE(1, *) '  EA Run time =', dt_eau, ' seconds'
WRITE(1, *) '  EA Average time =', dta_eau
call msec(mtime0)
do i=1,n
  x = rexps()
END DO
call msec(mtime1)
dt_eas = 0.001 * REAL(mtime1 - mtime0)
dta_eas = 1.E6 * dt_eas / REAL(n)
WRITE(1, *) 'Structured:'
WRITE(1, *) '  EA Run time =', dt_eas, ' seconds'
WRITE(1, *) '  EA Average time =', dta_eas
print *,'pass'
stop

CONTAINS

SUBROUTINE MSEC(M)

INTEGER, INTENT(OUT) :: m

INTEGER :: iv(8)

call date_and_time(values=iv)
m = iv(8) + 1000*(iv(7) + 60*(iv(6) + 60*iv(5)))
return
end SUBROUTINE MSEC

FUNCTION REXP_LG() RESULT(fn_val)

REAL :: fn_val

REAL :: u

call random_number(u)
fn_val = -alog(u)

return
end FUNCTION REXP_LG

end PROGRAM MAIN
