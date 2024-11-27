
common /com/ i
!$OMP THREADPRIVATE(/com/)
call sub()
print *,'pass'
end
subroutine sub()
common /com/ i
end
