call s1("123")
call s2(reshape(["1234","1234","1234","1234"],[2,2]))
print *,'pass'
contains
subroutine s1(a)
character(*),value::a
!$omp parallel firstprivate(k1,k2)
k1=1
k2=3
!$omp  task depend(out:a(:k2))
!$omp  end task
!$omp  task depend(out:a(k2-2:))
!$omp  end task
!$omp end parallel
end subroutine s1
subroutine s2(a)
character(*),value::a(:,:)
!$omp parallel firstprivate(k1,k2,l1,l2)
k1=1
k2=3
l1=1
l2=2
!$omp  task depend(out:a(l1:,l2)(:k2))
!$omp  end task
!$omp taskwait
!$omp  task depend(out:a(:l2,l2)(:k1))
!$omp  end task
!$omp end parallel
end subroutine s2
end
