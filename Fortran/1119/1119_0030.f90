type typ1
end type typ1
type, extends(typ1) :: type2
end type type2
class(typ1), pointer :: type1
complex(16)::j1=-100
allocate(type1)
i1=1
i2=2
i3=3
i4=4
select type ( aaa => type1 )
class default
!$omp atomic capture
j1%re=i1
i1=storage_size(aaa)
!$omp end atomic
select type ( aaa => type1 )
class is ( typ1 )
!$omp atomic capture
j1%im=i2
i2=storage_size(aaa)
!$omp end atomic

select type ( type1 )
class is ( typ1 )
!$omp atomic capture
j1%re=i3
i3=storage_size(aaa)
!$omp end atomic

select type ( type1 )
class default
!$omp atomic capture
j1%im=i4
i4=storage_size(aaa)
!$omp end atomic
goto 10
10 end select
end select
end select
end select
if(j1/=(3.0000000000000000000000000000000000,4.0000000000000000000000000000000000)) print *,'err'
print *,'pass'
end
