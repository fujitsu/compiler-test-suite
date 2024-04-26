subroutine s1
 integer:: a
  !$omp parallel private(a)
    write(1, '(z16.16)' )loc(a)
!$omp end parallel
end
call s1
print *,'pass'
end
