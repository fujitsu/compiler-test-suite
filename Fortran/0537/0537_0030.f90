call omp_set_num_threads(1)
call s
print *,'pass'
contains
subroutine s
class(*),pointer::a,b
character(3),target::i
i="123"
j=2
k=3
!$omp parallel firstprivate(i,j,k) shared(a) default(none)
a=>i(2:3)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err1'
end select
a=>i(j:)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err2',len(a)
end select
a=>i(j:k)
select type(a)
type is(character(*))
if(len(a)/=2) print *,'err3'
end select
!$omp end parallel

!$omp task private(i) shared(b)
b=>i(2:3**1)
select type(b)
type is(character(*))
if(len(b)/=2) print *,'err4'
end select
!$omp end task
end subroutine
end
