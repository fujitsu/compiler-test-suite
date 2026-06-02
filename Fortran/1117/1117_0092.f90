call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
print *,'pass'
end

subroutine test01()
!$OMP PARALLEL
!$OMP DO SCHEDULE(STATIC,1)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test02()
!$OMP PARALLEL
!$OMP DO SCHEDULE(DYNAMIC,1)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test03()
!$OMP PARALLEL
!$OMP DO SCHEDULE(GUIDED,1)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test04()
!$OMP PARALLEL
!$OMP DO SCHEDULE(RUNTIME)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test05()
!$OMP PARALLEL
!$OMP DO SCHEDULE(DYNAMIC)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test06()
!$OMP PARALLEL
!$OMP DO SCHEDULE(GUIDED)
do i=1,10
end do
!$OMP END DO 
!$OMP END PARALLEL
end subroutine

subroutine test07()
!$OMP PARALLEL
!$OMP DO SCHEDULE(STATIC)
do i=1,10
end do
!$OMP END DO
!$OMP END PARALLEL
end subroutine
