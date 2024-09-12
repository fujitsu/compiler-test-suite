type ty1
end type ty1
class(ty1),pointer::typ1
allocate(typ1)
!$omp parallel default(firstprivate)
!$omp task default(firstprivate)
a_1:select type(typ1)
class is(ty1)
end select a_1
!$omp end task
!$omp taskyield
!$omp task default(firstprivate)
a_2:select type(typ1) 
class is(ty1)
end select a_2
!$omp end task
!$omp taskyield
!$omp task default(firstprivate)
a_3:select type(typ1)
class is(ty1)
end select a_3
!$omp end task
!$omp taskyield
!$omp end parallel 
print *,'pass'
end
