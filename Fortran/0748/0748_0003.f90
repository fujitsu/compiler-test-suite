subroutine s1
type typ1
integer::i0
end type typ1
type, extends(typ1) :: type2
end type type2
class(typ1), pointer :: type1
allocate(type1)
select type ( aaa => type1 )
class default
!$omp task if(aaa%i0 <0)
!$omp end task
select type ( aaa => type1 )
class is ( typ1 )
!$omp parallel if(aaa%i0 <0)
!$omp end parallel
select type ( type1 )
class is ( typ1 )
select type ( type1 )
class default
end select
end select
end select
end select
end
print *,'pass'
end
