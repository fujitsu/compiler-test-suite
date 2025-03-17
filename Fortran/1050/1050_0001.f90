
subroutine sub01()
character(:),allocatable :: aaa(:), bbb(:)
allocate(character(3)::aaa(5),bbb(10))
!$omp parallel private(aaa,bbb)
  aaa = (/("abc",i=1,5)/)
  bbb = (/("efg",i=1,10)/)
!$omp single
    aaa = (/("xyz",i=1,5)/)
    bbb = (/("pqr",i=1,10)/)
!$omp end single copyprivate(aaa,bbb)
  if ( aaa(5) .ne. 'xyz' ) print *,'ng sub01-1:',aaa(5)
  if ( bbb(10) .ne. 'pqr' ) print *,'ng sub01-2:',bbb(10)
!$omp end parallel
end

call sub01()
print *,'pass'
end
