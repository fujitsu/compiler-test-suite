PROGRAM MAIN

type x
  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
end type
type(x)::v(3)
integer,parameter::p1=1,p10=10,p91=91,p100=100

m=10;k=1;mm=100;kk=91
  ALLOCATE(v(2)%a(100, 3))

  CALL f(10, v(2)%a(:10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-01'
  v(2)%a=0
  CALL f(10, v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-02'
  v(2)%a=0
  CALL f(10, v(2)%a(:m, :))
  if (v(2)%a(2, 3)/=1)print *,'error-03'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m, :))
  if (v(2)%a(2, 3)/=1)print *,'error-04'
  v(2)%a=0
  CALL f2(v(2)%a(:10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-011'
  v(2)%a=0
  CALL f2( v(2)%a(1:10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-012'
  v(2)%a=0
  CALL f2(v(2)%a(:m, :))
  if (v(2)%a(2, 3)/=1)print *,'error-013'
  v(2)%a=0
  CALL f2(v(2)%a(k:m, :))
  if (v(2)%a(2, 3)/=1)print *,'error-014'
  v(2)%a=0
  CALL f(10, v(2)%a(91:, :))
  if (v(2)%a(92, 3)/=1)print *,'error-031'
  v(2)%a=0
  CALL f(10, v(2)%a(91:100, :))
  if (v(2)%a(92, 3)/=1)print *,'error-032'
  v(2)%a=0
  CALL f(10, v(2)%a(kk:, :))
  if (v(2)%a(92, 3)/=1)print *,'error-033'
  v(2)%a=0
  CALL f(10, v(2)%a(kk:mm, :))
  if (v(2)%a(92, 3)/=1)print *,'error-034'
  v(2)%a=0
  CALL f(10, v(2)%a(:10:1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-041'
  v(2)%a=0
  CALL f(10, v(2)%a(1:10:1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-042'
  v(2)%a=0
  CALL f(10, v(2)%a(:m:1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-043'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m:1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-044'
  v(2)%a=0
  CALL f(10, v(2)%a(:10:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-051'
  v(2)%a=0
  CALL f(10, v(2)%a(1:10:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-052'
  v(2)%a=0
  CALL f(10, v(2)%a(:m:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-053'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-054'
  v(2)%a=0
  CALL f(10, v(2)%a(:p10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-061'
  v(2)%a=0
  CALL f(10, v(2)%a(p1:p10, :))
  if (v(2)%a(2, 3)/=1)print *,'error-062'
  v(2)%a=0
  CALL f(10, v(2)%a(p1:m, :))
  if (v(2)%a(2, 3)/=1)print *,'error-063'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m:p1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-064'
  v(2)%a=0
  CALL f(10, v(2)%a(p91:, :))
  if (v(2)%a(92, 3)/=1)print *,'error-071'
  v(2)%a=0
  CALL f(10, v(2)%a(p91:p100, :))
  if (v(2)%a(92, 3)/=1)print *,'error-072'
  v(2)%a=0
  CALL f(10, v(2)%a(kk:p100, :))
  if (v(2)%a(92, 3)/=1)print *,'error-073'
  v(2)%a=0
  CALL f(10, v(2)%a(kk:mm:p1, :))
  if (v(2)%a(92, 3)/=1)print *,'error-074'
  v(2)%a=0
  CALL f(10, v(2)%a(:p10:p1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-081'
  v(2)%a=0
  CALL f(10, v(2)%a(p1:p10:p1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-082'
  v(2)%a=0
  CALL f(10, v(2)%a(:m:p1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-083'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m:p1, :))
  if (v(2)%a(2, 3)/=1)print *,'error-084'
  v(2)%a=0
  CALL f(10, v(2)%a(:p10:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-091'
  v(2)%a=0
  CALL f(10, v(2)%a(p1:p10:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-092'
  v(2)%a=0
  CALL f(10, v(2)%a(p1:m:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-093'
  v(2)%a=0
  CALL f(10, v(2)%a(k:m:k, :))
  if (v(2)%a(2, 3)/=1)print *,'error-094'
  v(2)%a=0
print *,'pass'

CONTAINS

  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n, 3) :: a
    a(2, 3) = 1
  END SUBROUTINE f
  SUBROUTINE f2( a)
    INTEGER, DIMENSION(10, 3) :: a
    a(2, 3) = 1
  END SUBROUTINE f2

END PROGRAM MAIN
