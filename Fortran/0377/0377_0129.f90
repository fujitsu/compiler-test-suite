call test01()
print *,"pass"
end
subroutine test01()
i1=6
!$omp parallel firstprivate(i1)
!$omp parallel firstprivate(i1)
!$omp parallel firstprivate(i1)
!$omp parallel firstprivate(i1)
call sub( (/ character (i1) :: /) )
i1=7
!$omp end parallel
!$omp end parallel
!$omp end parallel
!$omp end parallel
call sub( (/ character (i1) :: /) )
call sub2( (/ character (ifun(i1)) :: /) )
if (i1.ne.16) print *,'fail'
i1=6
call sub2( (/ character (ifun(i1)) :: "a"(1:ifun(i1)-15) /) )
contains
subroutine sub(ccc)
character(*) :: ccc(*)
if (len(ccc(1)).ne.6) print *,'fail'
end subroutine
subroutine sub2(ccc)
character(*) :: ccc(*)
if (len(ccc(1)).ne.7) print *,'fail'
end subroutine
end

function ifun(ii)
ifun=ii+1
ii=ii+10
end

