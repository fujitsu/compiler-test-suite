call test01()
print *,"pass"
end

subroutine sss(ii)
i=ii
i=i
end subroutine
subroutine test01()
integer arr(10)
arr=1
i=1
!$omp parallel do reduction(+:i)
do j=1,1
i=1
call sss(arr(i))
i=100
!$omp task
i=200
!$omp end task
end do
!$omp end parallel do
end 
