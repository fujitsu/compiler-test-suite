PROGRAM MAIN

type x
  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
end type
type(x)::v
integer,parameter::p1=1,p10=10,p91=91,p100=100

m=10;k=1;mm=100;kk=91
  ALLOCATE(v%a(100, 3))

  CALL f(10, v%a(:10, 3))
  if (v%a(2, 3)/=1)print *,'error-01'
  v%a=0
  CALL f(10, v%a(1:10, 3))
  if (v%a(2, 3)/=1)print *,'error-02'
  v%a=0
  CALL f(10, v%a(:m, 3))
  if (v%a(2, 3)/=1)print *,'error-03'
  v%a=0
  CALL f(10, v%a(k:m, 3))
  if (v%a(2, 3)/=1)print *,'error-04'
  v%a=0
  CALL f(100, v%a(1:100, 3))
  if (v%a(2, 3)/=1)print *,'error-05'
  v%a=0
  CALL f(100, v%a(:, 3))
  if (v%a(2, 3)/=1)print *,'error-06'
  v%a=0
  CALL f2(v%a(:10, 3))
  if (v%a(2, 3)/=1)print *,'error-011'
  v%a=0
  CALL f2( v%a(1:10, 3))
  if (v%a(2, 3)/=1)print *,'error-012'
  v%a=0
  CALL f2(v%a(:m, 3))
  if (v%a(2, 3)/=1)print *,'error-013'
  v%a=0
  CALL f2(v%a(k:m, 3))
  if (v%a(2, 3)/=1)print *,'error-014'
  v%a=0
  CALL f(10, v%a(91:, 3))
  if (v%a(92, 3)/=1)print *,'error-031'
  v%a=0
  CALL f(10, v%a(91:100, 3))
  if (v%a(92, 3)/=1)print *,'error-032'
  v%a=0
  CALL f(10, v%a(kk:, 3))
  if (v%a(92, 3)/=1)print *,'error-033'
  v%a=0
  CALL f(10, v%a(kk:mm, 3))
  if (v%a(92, 3)/=1)print *,'error-034'
  v%a=0
  CALL f(10, v%a(:10:1, 3))
  if (v%a(2, 3)/=1)print *,'error-041'
  v%a=0
  CALL f(10, v%a(1:10:1, 3))
  if (v%a(2, 3)/=1)print *,'error-042'
  v%a=0
  CALL f(10, v%a(:m:1, 3))
  if (v%a(2, 3)/=1)print *,'error-043'
  v%a=0
  CALL f(10, v%a(k:m:1, 3))
  if (v%a(2, 3)/=1)print *,'error-044'
  v%a=0
  CALL f(10, v%a(:10:k, 3))
  if (v%a(2, 3)/=1)print *,'error-051'
  v%a=0
  CALL f(10, v%a(1:10:k, 3))
  if (v%a(2, 3)/=1)print *,'error-052'
  v%a=0
  CALL f(10, v%a(:m:k, 3))
  if (v%a(2, 3)/=1)print *,'error-053'
  v%a=0
  CALL f(10, v%a(k:m:k, 3))
  if (v%a(2, 3)/=1)print *,'error-054'
  v%a=0
  CALL f(10, v%a(:p10, 3))
  if (v%a(2, 3)/=1)print *,'error-061'
  v%a=0
  CALL f(10, v%a(p1:p10, 3))
  if (v%a(2, 3)/=1)print *,'error-062'
  v%a=0
  CALL f(10, v%a(p1:m, 3))
  if (v%a(2, 3)/=1)print *,'error-063'
  v%a=0
  CALL f(10, v%a(k:m:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-064'
  v%a=0
  CALL f(10, v%a(p91:, 3))
  if (v%a(92, 3)/=1)print *,'error-071'
  v%a=0
  CALL f(10, v%a(p91:p100, 3))
  if (v%a(92, 3)/=1)print *,'error-072'
  v%a=0
  CALL f(10, v%a(kk:p100, 3))
  if (v%a(92, 3)/=1)print *,'error-073'
  v%a=0
  CALL f(10, v%a(kk:mm:p1, 3))
  if (v%a(92, 3)/=1)print *,'error-074'
  v%a=0
  CALL f(10, v%a(:p10:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-081'
  v%a=0
  CALL f(10, v%a(p1:p10:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-082'
  v%a=0
  CALL f(10, v%a(:m:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-083'
  v%a=0
  CALL f(10, v%a(k:m:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-084'
  v%a=0
  CALL f(10, v%a(:p10:k, 3))
  if (v%a(2, 3)/=1)print *,'error-091'
  v%a=0
  CALL f(10, v%a(p1:p10:k, 3))
  if (v%a(2, 3)/=1)print *,'error-092'
  v%a=0
  CALL f(10, v%a(p1:m:k, 3))
  if (v%a(2, 3)/=1)print *,'error-093'
  v%a=0
  CALL f(10, v%a(k:m:k, 3))
  if (v%a(2, 3)/=1)print *,'error-094'
  v%a=0
  CALL f(100, v%a(:p100, 3))
  if (v%a(2, 3)/=1)print *,'error-161'
  v%a=0
  CALL f(100, v%a(p1:p100, 3))
  if (v%a(2, 3)/=1)print *,'error-162'
  v%a=0
  CALL f(100, v%a(p1:mm, 3))
  if (v%a(2, 3)/=1)print *,'error-163'
  v%a=0
  CALL f(100, v%a(k:mm:p1, 3))
  if (v%a(2, 3)/=1)print *,'error-164'
  v%a=0
print *,'pass'

CONTAINS

  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n) :: a
    a(2) = 1
  END SUBROUTINE f
  SUBROUTINE f2( a)
    INTEGER, DIMENSION(10) :: a
    a(2) = 1
  END SUBROUTINE f2

END PROGRAM MAIN
