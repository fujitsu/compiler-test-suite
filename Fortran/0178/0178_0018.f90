common /com/ i
!$OMP THREADPRIVATE(/com/)
call sub()
print *,'pass'
end
subroutine sub()
!$OMP THREADPRIVATE(/com/)
common /com/ i
end
