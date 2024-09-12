!$omp parallel 
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test03()
call test02()
call test01()
!$omp end parallel 
print *,'pass'
end 

subroutine test01()
!$omp parallel
do ii=1,1
k=1
!$omp workshare
i=1
!$omp end workshare
end do
!$omp end parallel
end

subroutine test02()
!$omp master
do ii=1,1
k=1
i=1
end do
!$omp end master
end

subroutine test03()
!$omp critical
do ii=1,1
k=1
i=1
end do
!$omp end critical

end

subroutine test04()
do ii=1,1
k=1
i=1
end do

end

subroutine test05()
!$omp parallel workshare
k=1
i=1
!$omp end parallel workshare

end

subroutine test06()
!$omp parallel
do ii=1,1
k=1
!$omp workshare
i=1
!$omp end workshare
end do
!$omp end parallel
end

subroutine test07()
end

subroutine test08()
end

subroutine test09()
end

subroutine test10()
end
