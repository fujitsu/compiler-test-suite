PROGRAM MAIN

type x
  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
end type
type(x)::v
integer,parameter::p1=1,p10=10,p91=91,p100=100

m=10;k=1;mm=100;kk=91
  ALLOCATE(v%a(100, 3))

  CALL f(10, v%a(:10, :))
  if (v%a(2, 3)/=1)print *,'error-01'
  v%a=0
  CALL f(10, v%a(1:10, :))
  if (v%a(2, 3)/=1)print *,'error-02'
  v%a=0
  CALL f(10, v%a(:m, :))
  if (v%a(2, 3)/=1)print *,'error-03'
  v%a=0
  CALL f(10, v%a(k:m, :))
  if (v%a(2, 3)/=1)print *,'error-04'
  v%a=0
  CALL f2(v%a(:10, :))
  if (v%a(2, 3)/=1)print *,'error-011'
  v%a=0
  CALL f2( v%a(1:10, :))
  if (v%a(2, 3)/=1)print *,'error-012'
  v%a=0
  CALL f2(v%a(:m, :))
  if (v%a(2, 3)/=1)print *,'error-013'
  v%a=0
  CALL f2(v%a(k:m, :))
  if (v%a(2, 3)/=1)print *,'error-014'
  v%a=0
  CALL f(10, v%a(91:, :))
  if (v%a(92, 3)/=1)print *,'error-031'
  v%a=0
  CALL f(10, v%a(91:100, :))
  if (v%a(92, 3)/=1)print *,'error-032'
  v%a=0
  CALL f(10, v%a(kk:, :))
  if (v%a(92, 3)/=1)print *,'error-033'
  v%a=0
  CALL f(10, v%a(kk:mm, :))
  if (v%a(92, 3)/=1)print *,'error-034'
  v%a=0
  CALL f(10, v%a(:10:1, :))
  if (v%a(2, 3)/=1)print *,'error-041'
  v%a=0
  CALL f(10, v%a(1:10:1, :))
  if (v%a(2, 3)/=1)print *,'error-042'
  v%a=0
  CALL f(10, v%a(:m:1, :))
  if (v%a(2, 3)/=1)print *,'error-043'
  v%a=0
  CALL f(10, v%a(k:m:1, :))
  if (v%a(2, 3)/=1)print *,'error-044'
  v%a=0
  CALL f(10, v%a(:10:k, :))
  if (v%a(2, 3)/=1)print *,'error-051'
  v%a=0
  CALL f(10, v%a(1:10:k, :))
  if (v%a(2, 3)/=1)print *,'error-052'
  v%a=0
  CALL f(10, v%a(:m:k, :))
  if (v%a(2, 3)/=1)print *,'error-053'
  v%a=0
  CALL f(10, v%a(k:m:k, :))
  if (v%a(2, 3)/=1)print *,'error-054'
  v%a=0
  CALL f(10, v%a(:p10, :))
  if (v%a(2, 3)/=1)print *,'error-061'
  v%a=0
  CALL f(10, v%a(p1:p10, :))
  if (v%a(2, 3)/=1)print *,'error-062'
  v%a=0
  CALL f(10, v%a(p1:m, :))
  if (v%a(2, 3)/=1)print *,'error-063'
  v%a=0
  CALL f(10, v%a(k:m:p1, :))
  if (v%a(2, 3)/=1)print *,'error-064'
  v%a=0
  CALL f(10, v%a(p91:, :))
  if (v%a(92, 3)/=1)print *,'error-071'
  v%a=0
  CALL f(10, v%a(p91:p100, :))
  if (v%a(92, 3)/=1)print *,'error-072'
  v%a=0
  CALL f(10, v%a(kk:p100, :))
  if (v%a(92, 3)/=1)print *,'error-073'
  v%a=0
  CALL f(10, v%a(kk:mm:p1, :))
  if (v%a(92, 3)/=1)print *,'error-074'
  v%a=0
  CALL f(10, v%a(:p10:p1, :))
  if (v%a(2, 3)/=1)print *,'error-081'
  v%a=0
  CALL f(10, v%a(p1:p10:p1, :))
  if (v%a(2, 3)/=1)print *,'error-082'
  v%a=0
  CALL f(10, v%a(:m:p1, :))
  if (v%a(2, 3)/=1)print *,'error-083'
  v%a=0
  CALL f(10, v%a(k:m:p1, :))
  if (v%a(2, 3)/=1)print *,'error-084'
  v%a=0
  CALL f(10, v%a(:p10:k, :))
  if (v%a(2, 3)/=1)print *,'error-091'
  v%a=0
  CALL f(10, v%a(p1:p10:k, :))
  if (v%a(2, 3)/=1)print *,'error-092'
  v%a=0
  CALL f(10, v%a(p1:m:k, :))
  if (v%a(2, 3)/=1)print *,'error-093'
  v%a=0
  CALL f(10, v%a(k:m:k, :))
  if (v%a(2, 3)/=1)print *,'error-094'
  v%a=0
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
