call s1
call s2
print *,'pass'
contains
subroutine s1
integer,pointer::i(:)
integer,target::ttt(1)
ttt=1
allocate(i(1))
!$omp parallel firstprivate(i)
i=>ttt
!$omp end parallel
end subroutine
subroutine s2
character,pointer::i(:)
character,target::ttt(2)
ttt="a"
allocate(i(2))
!$omp parallel firstprivate(i)
i=>ttt
!$omp end parallel
end subroutine
end
