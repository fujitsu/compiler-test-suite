call sub01()

end

subroutine sub01()
 interface
  subroutine osub01(r)
   real :: r
  end subroutine
 end interface

 real :: r, r2

 r  = 4.0
 r2 = 0.0

 r2 = cfunc02(osub01, r)

 if (r.ne.r2) print *,'error'

 print *,'pass'

 contains
  function cfunc01(dfunc01, r) result(crst01)
   real :: r
   real :: dfunc01
   crst01 = dfunc01(r)
  end function

  function cfunc02(dfunc01, r) result(crst02)
   call dfunc01(r)
   crst02 = r
  end function

end subroutine

function dfunc01(r) result(drst01)
 real :: r
 real :: drst01
 drst01 = r * 2.0
end function

subroutine osub01(r)
 real :: r
 r = r * r
end subroutine
