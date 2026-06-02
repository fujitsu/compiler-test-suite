interface 
  subroutine s1
  end subroutine s1
  subroutine s2
  end subroutine s2
end interface
procedure(),pointer::p
!$omp threadprivate(p)
integer :: omp_get_thread_num

!$omp parallel
  if (omp_get_thread_num() == 0) then
    p=>s1
  else 
    p=>s2
  end if
  call p
!$omp end parallel
print *,'pass'
end

subroutine s1
  integer omp_get_thread_num
  if (omp_get_thread_num() /= 0) print *,1
end subroutine s1

subroutine s2
  integer omp_get_thread_num
  if (omp_get_thread_num() == 0) print *,2
end subroutine s2
