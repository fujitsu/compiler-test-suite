integer a(10),aa(10,10)
aa=0
a=0
call test04(aa)
call test03(a)
call test02(a,10)
call test01()
print *,'pass'
end 

subroutine test01()
integer a(10)
!$omp parallel reduction(max:a)
do i=1,10
 a(i)=a(i)+1
end do
!$omp end parallel
end

subroutine test02(a,j)
integer a(j)
!$omp parallel reduction(max:a)
do i=1,10
 a(i)=a(i)+1
end do
!$omp end parallel
end

subroutine test03(a)
integer a(10)
!$omp parallel reduction(+:a)
do i=1,10
 a(i)=a(i)+1
end do
!$omp end parallel
end

subroutine test04(a)
integer a(10,10)
!$omp parallel reduction(+:a)
do j=1,10
do i=1,10
 a(i,j)=a(i,j)+1
end do
end do
!$omp end parallel
end
