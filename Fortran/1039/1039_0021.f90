PROGRAM MAIN

  INTEGER, DIMENSION(:, :) , ALLOCATABLE :: a
integer,parameter::p1=1,p10=10,p91=91,p100=100

m=10;k=1;mm=100;kk=91
  ALLOCATE(a(100, 3))

  CALL f(10, a(:10, 3))
  if (a(2, 3)/=1)print *,'error-01'
  a=0
  CALL f(10, a(1:10, 3))
  if (a(2, 3)/=1)print *,'error-02'
  a=0
  CALL f(10, a(:m, 3))
  if (a(2, 3)/=1)print *,'error-03'
  a=0
  CALL f(10, a(k:m, 3))
  if (a(2, 3)/=1)print *,'error-04'
  a=0
  CALL f(100, a(1:100, 3))
  if (a(2, 3)/=1)print *,'error-05'
  a=0
  CALL f(100, a(:, 3))
  if (a(2, 3)/=1)print *,'error-06'
  a=0
  CALL f2(a(:10, 3))
  if (a(2, 3)/=1)print *,'error-011'
  a=0
  CALL f2( a(1:10, 3))
  if (a(2, 3)/=1)print *,'error-012'
  a=0
  CALL f2(a(:m, 3))
  if (a(2, 3)/=1)print *,'error-013'
  a=0
  CALL f2(a(k:m, 3))
  if (a(2, 3)/=1)print *,'error-014'
  a=0
  CALL f(10, a(91:, 3))
  if (a(92, 3)/=1)print *,'error-031'
  a=0
  CALL f(10, a(91:100, 3))
  if (a(92, 3)/=1)print *,'error-032'
  a=0
  CALL f(10, a(kk:, 3))
  if (a(92, 3)/=1)print *,'error-033'
  a=0
  CALL f(10, a(kk:mm, 3))
  if (a(92, 3)/=1)print *,'error-034'
  a=0
  CALL f(10, a(:10:1, 3))
  if (a(2, 3)/=1)print *,'error-041'
  a=0
  CALL f(10, a(1:10:1, 3))
  if (a(2, 3)/=1)print *,'error-042'
  a=0
  CALL f(10, a(:m:1, 3))
  if (a(2, 3)/=1)print *,'error-043'
  a=0
  CALL f(10, a(k:m:1, 3))
  if (a(2, 3)/=1)print *,'error-044'
  a=0
  CALL f(10, a(:10:k, 3))
  if (a(2, 3)/=1)print *,'error-051'
  a=0
  CALL f(10, a(1:10:k, 3))
  if (a(2, 3)/=1)print *,'error-052'
  a=0
  CALL f(10, a(:m:k, 3))
  if (a(2, 3)/=1)print *,'error-053'
  a=0
  CALL f(10, a(k:m:k, 3))
  if (a(2, 3)/=1)print *,'error-054'
  a=0
  CALL f(10, a(:p10, 3))
  if (a(2, 3)/=1)print *,'error-061'
  a=0
  CALL f(10, a(p1:p10, 3))
  if (a(2, 3)/=1)print *,'error-062'
  a=0
  CALL f(10, a(p1:m, 3))
  if (a(2, 3)/=1)print *,'error-063'
  a=0
  CALL f(10, a(k:m:p1, 3))
  if (a(2, 3)/=1)print *,'error-064'
  a=0
  CALL f(10, a(p91:, 3))
  if (a(92, 3)/=1)print *,'error-071'
  a=0
  CALL f(10, a(p91:p100, 3))
  if (a(92, 3)/=1)print *,'error-072'
  a=0
  CALL f(10, a(kk:p100, 3))
  if (a(92, 3)/=1)print *,'error-073'
  a=0
  CALL f(10, a(kk:mm:p1, 3))
  if (a(92, 3)/=1)print *,'error-074'
  a=0
  CALL f(10, a(:p10:p1, 3))
  if (a(2, 3)/=1)print *,'error-081'
  a=0
  CALL f(10, a(p1:p10:p1, 3))
  if (a(2, 3)/=1)print *,'error-082'
  a=0
  CALL f(10, a(:m:p1, 3))
  if (a(2, 3)/=1)print *,'error-083'
  a=0
  CALL f(10, a(k:m:p1, 3))
  if (a(2, 3)/=1)print *,'error-084'
  a=0
  CALL f(10, a(:p10:k, 3))
  if (a(2, 3)/=1)print *,'error-091'
  a=0
  CALL f(10, a(p1:p10:k, 3))
  if (a(2, 3)/=1)print *,'error-092'
  a=0
  CALL f(10, a(p1:m:k, 3))
  if (a(2, 3)/=1)print *,'error-093'
  a=0
  CALL f(10, a(k:m:k, 3))
  if (a(2, 3)/=1)print *,'error-094'
  a=0
  CALL f(100, a(:p100, 3))
  if (a(2, 3)/=1)print *,'error-161'
  a=0
  CALL f(100, a(p1:p100, 3))
  if (a(2, 3)/=1)print *,'error-162'
  a=0
  CALL f(100, a(p1:mm, 3))
  if (a(2, 3)/=1)print *,'error-163'
  a=0
  CALL f(100, a(k:mm:p1, 3))
  if (a(2, 3)/=1)print *,'error-164'
  a=0
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
