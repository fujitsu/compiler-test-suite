subroutine sub01()
  print *,'sub01'
end subroutine
function func01()
  func01 = 1000
end function

external :: sub01,func01
procedure(),pointer :: ppp
procedure(),pointer :: qqq
real res

  ppp=>sub01
  qqq=>func01

call omp_set_num_threads(2)
!$omp parallel shared(ppp,qqq)
  call ppp()
  res = qqq()
!$omp end parallel
end
