type ty1
end type ty1
class(ty1),pointer::typ1
select type (zzz=>typ1)
class default
!$omp parallel private(zzz)
!$omp end parallel
end select
print *,'pass'
end
