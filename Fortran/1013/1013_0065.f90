subroutine sub01()
  character(:),save,allocatable :: aaa(:)
!$    integer*4 OMP_GET_THREAD_NUM
!$omp threadprivate(aaa)

!$omp parallel copyin(aaa)
  if (all(aaa.eq."PASS")) then
  else
  print *, aaa(1)
  stop "NG"
  endif
!$omp end parallel

return 
entry init
!$omp parallel
 allocate(character*10::aaa(10))
 aaa = "PASS"
!$omp end parallel

end

call init
call sub01
print *,"PASS"
end
