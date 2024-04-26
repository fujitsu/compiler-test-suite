subroutine s1

!$ call omp_set_num_threads(1)
a=1

associate ( x=> a )
!$omp parallel default(shared)
  x=2
 if (a/= 2) print *,101
 if (x/= 2) print *,103
!$omp end parallel
end associate


if (a/= 2) print *,102

end

call s1
print *,'pass'
end
