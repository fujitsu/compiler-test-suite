subroutine sub01()
  print *,'sub01'
end subroutine
function func01()
  func01 = 1000
end function

subroutine sub(arg1,arg2)
external :: sub01,func01
procedure(),pointer :: arg1
procedure(),pointer :: arg2
real res
call omp_set_num_threads(2)

!$omp do private(arg1,arg2,res)
  do i = 1,2
  arg1=>sub01
  arg2=>func01
  call arg1()
  res = arg2()
  end do
end

interface
subroutine sub(arg1,arg2)
procedure(),pointer :: arg1
procedure(),pointer :: arg2
end subroutine
end interface
procedure(),pointer :: ppp
procedure(),pointer :: qqq
!$omp parallel
call sub(ppp,qqq)
!$omp end parallel
end
