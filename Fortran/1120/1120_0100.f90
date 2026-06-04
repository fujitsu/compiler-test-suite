call test01()
call test02()
call test03()
print *,"pass"
end 

subroutine test01()
integer,pointer :: piii
common /com2/ piii,sss
!$omp parallel private(/com2/)
allocate(piii)
piii=1
!$omp task
if (1.eq.2)  print *,"2:",piii
!$omp end task
!$omp taskwait
!$omp end parallel
end 

subroutine test02()
integer,pointer :: piii
common /com2/ piii,sss
!$omp parallel private(/com2/)
allocate(piii)
piii=1
!$omp task
if (1.eq.2)  print *,"2:",piii
if (1.eq.2)  print *,"2:",sss
!$omp end task
!$omp taskwait
!$omp end parallel
end 

subroutine test03()
integer,pointer :: piii
common /com2/ piii,sss
common /com1/ piiia
!$omp parallel private(/com2/,/com1/)
allocate(piii)
piii=1
piiia=1
!$omp task
if (1.eq.2)  print *,"2:",piii
if (1.eq.2)  print *,"2:",piiia
!$omp end task
!$omp taskwait
!$omp end parallel
end 
