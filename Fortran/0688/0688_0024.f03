call s1
print *,'pass'
end
subroutine s1
type typ1
end type typ1
type, extends(typ1) :: type2
end type type2
class(typ1), pointer :: type1
allocate(type1)
select type ( aaa => type1 )
class default
!$omp atomic write
i=storage_size(aaa)
if(i/=0) print *,'err'
select type ( aaa => type1 )
class is ( typ1 )
!$omp atomic write
i=storage_size(aaa)
if(i/=0) print *,'err'
select type ( type1 )
class is ( typ1 )
!$omp atomic write
i=storage_size(aaa)
if(i/=0) print *,'err'
select type ( type1 )
class default
!$omp atomic write
i=storage_size(aaa)
if(i/=0) print *,'err'
end select
end select
end select
end select
end
