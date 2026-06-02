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

call omp_set_num_threads(2)
!$omp parallel 
!$omp task private(ppp,qqq,res)
  ppp=>sub01
  qqq=>func01
  call sub01()
  res = func01()
!$omp end task
!$omp end parallel
end
