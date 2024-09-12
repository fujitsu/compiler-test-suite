call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
call test13()
call test14()
call test15()
call test16()
call test17()
print *,'pass'
end

subroutine test01()
!$omp parallel
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test02()
!$omp parallel private(i)
!$omp parallel private(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel private(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test03()
!$omp parallel private(i)
!$omp parallel shared(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel shared(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(i)
!$omp parallel shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test04()
!$omp parallel shared(i)
!$omp parallel shared(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel shared(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test05()
!$omp parallel shared(i)
!$omp parallel private(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel private(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel shared(i)
!$omp parallel private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test06()
!$omp parallel reduction(+:i)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel reduction(+:i)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel reduction(+:i)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel reduction(+:i)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test07()
common /com/ i
!$omp parallel private(/com/)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test08()
common /com/ i
!$omp parallel private(/com/)
!$omp parallel shared(/com/)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel shared(/com/)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel shared(/com/)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel shared(/com/)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test09()
common /com/ i
!$omp parallel private(/com/)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel private(/com/)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test10()
common /com/ i
!$omp parallel default(private)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test11()
common /com/ i
!$omp parallel default(private)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test12()
common /com/ i
!$omp parallel default(shared )
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test13()
common /com/ i
!$omp parallel default(shared )
!$omp parallel
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel default(none) private(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel default(none) private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel default(none) private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test14()
common /com/ i
!$omp parallel default(private)
!$omp parallel default(none) shared(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(none) shared(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(none) shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
!$omp parallel default(none) shared(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test15()
common /com/ i
!$omp parallel default(none   ) shared(i)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(private)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(private)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test16()
common /com/ i
!$omp parallel default(none   ) shared(i)
!$omp parallel default(shared )
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(shared )
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(shared )
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) shared(i)
!$omp parallel default(shared )
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine

subroutine test17()
common /com/ i
!$omp parallel default(none   ) private(i)
!$omp parallel default(none   ) private(i)
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) private(i)
!$omp parallel default(none   ) private(i)
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) private(i)
!$omp parallel default(none   ) private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
do i=1,1
end do
!$omp endparallel

!$omp parallel default(none   ) private(i)
!$omp parallel default(none   ) private(i)
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end subroutine
