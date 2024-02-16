subroutine sub01()
  character(:),save,allocatable :: aaa(:), bbb(:,:), ccc(:,:,:)
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(character(3)::aaa(10))
  allocate(character(6)::bbb(2,3))
  allocate(character(2)::ccc(2,2,2))
  aaa = "111"
  bbb = "222333"
  ccc = "44"
  if (any(aaa /= "111")) print *,'sub01 ng-1:',aaa
  if (any(bbb /= "222333")) print *,'sub01 ng-2:',bbb
  if (any(ccc /= "44")) print *,'sub01 ng-3:',ccc
!$omp end parallel

  aaa = "abc"
  bbb = "efg123"
  ccc = "xy"

!$omp parallel copyin(aaa, bbb, ccc)
  if (any(aaa /= "abc")) print *,'sub01 ng-4:',aaa
  if (any(bbb /= "efg123")) print *,'sub01 ng-5:',bbb
  if (any(ccc /= "xy")) print *,'sub01 ng-6:',ccc
!$omp end parallel
end

subroutine sub02()
  character(:),save,allocatable :: aaa, bbb, ccc
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(character(3)::aaa)
  allocate(character(4)::bbb)
  allocate(character(5)::ccc)
  aaa = "111"
  bbb = "2222"
  ccc = "33333"
  if (aaa /= "111") print *,'sub02 ng-1:',aaa
  if (bbb /= "2222") print *,'sub02 ng-2:',bbb
  if (ccc /= "33333") print *,'sub02 ng-3:',ccc
!$omp end parallel

  aaa = "abc"
  bbb = "defg"
  ccc = "hijkl"

!$omp parallel copyin(aaa, bbb, ccc)
  if (aaa /= "abc") print *,'sub02 ng-4:',aaa
  if (bbb /= "defg") print *,'sub02 ng-5:',bbb
  if (ccc /= "hijkl") print *,'sub02 ng-6:',ccc
!$omp end parallel
end

subroutine sub03()
  integer,save,allocatable :: aaa(:), bbb(:,:), ccc(:,:,:)
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa(2))
  allocate(bbb(3,4))
  allocate(ccc(2,2,2))
  aaa = 1
  bbb = 2
  ccc = 3
  if (any(aaa /= 1)) print *,'sub03 ng-1:',aaa
  if (any(bbb /= 2)) print *,'sub03 ng-2:',bbb
  if (any(ccc /= 3)) print *,'sub03 ng-3:',ccc
!$omp end parallel

  aaa = 10
  bbb = 20
  ccc = 30

!$omp parallel copyin(aaa, bbb, ccc)
  if (any(aaa /= 10)) print *,'sub03 ng-4:',aaa
  if (any(bbb /= 20)) print *,'sub03 ng-5:',bbb
  if (any(ccc /= 30)) print *,'sub03 ng-6:',ccc
!$omp end parallel
end

subroutine sub04()
  integer,save,allocatable :: aaa, bbb, ccc
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa, bbb, ccc)
  aaa = 1
  bbb = 2
  ccc = 3
  if (aaa /= 1) print *,'sub04 ng-1:',aaa
  if (bbb /= 2) print *,'sub04 ng-2:',bbb
  if (ccc /= 3) print *,'sub04 ng-3:',ccc
!$omp end parallel

  aaa = 10
  bbb = 20
  ccc = 30

!$omp parallel copyin(aaa, bbb, ccc)
  if (aaa /= 10) print *,'sub04 ng-4:',aaa
  if (bbb /= 20) print *,'sub04 ng-5:',bbb
  if (ccc /= 30) print *,'sub04 ng-6:',ccc
!$omp end parallel
end

subroutine sub05()
  type test
     integer::x,y
  end type test
  type(test),save,allocatable::aaa(:), bbb(:,:), ccc(:,:,:)
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa(3), bbb(2,3), ccc(2,2,2))
  aaa%y = 1
  bbb%y = 2
  ccc%y = 3
  if (all(aaa%y /= 1)) print *,'sub05 ng-1:',aaa
  if (all(bbb%y /= 2)) print *,'sub05 ng-2:',bbb
  if (all(ccc%y /= 3)) print *,'sub05 ng-3:',ccc
!$omp end parallel

  aaa%y = 10
  bbb%y = 20
  ccc%y = 30

!$omp parallel copyin(aaa, bbb, ccc)
  if (all(aaa%y /= 10)) print *,'sub05 ng-4:',aaa
  if (all(bbb%y /= 20)) print *,'sub05 ng-5:',bbb
  if (all(ccc%y /= 30)) print *,'sub05 ng-6:',ccc
!$omp end parallel
end

subroutine sub06()
  type test
     integer::x,y
  end type test
  type(test),save,allocatable::aaa, bbb, ccc
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa, bbb, ccc)
  aaa%y = 1
  bbb%y = 2
  ccc%y = 3
  if (aaa%y /= 1) print *,'sub06 ng-1:',aaa
  if (bbb%y /= 2) print *,'sub06 ng-2:',bbb
  if (ccc%y /= 3) print *,'sub06 ng-3:',ccc
!$omp end parallel

  aaa%y = 10
  bbb%y = 20
  ccc%y = 30

!$omp parallel copyin(aaa, bbb, ccc)
  if (aaa%y /= 10) print *,'sub06 ng-4:',aaa
  if (bbb%y /= 20) print *,'sub06 ng-5:',bbb
  if (ccc%y /= 30) print *,'sub06 ng-6:',ccc
!$omp end parallel
end

subroutine sub07()
complex(8),save,allocatable :: aaa(:), bbb(:,:), ccc(:,:,:)
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa(2))
  allocate(bbb(3,4))
  allocate(ccc(2,2,2))
  aaa = 1.0
  bbb = 2.0
  ccc = 3.0
  if (any(aaa /= 1.0)) print *,'sub07 ng-1:', aaa, loc(aaa)
  if (any(bbb /= 2.0)) print *,'sub07 ng-2:', bbb, loc(bbb)
  if (any(ccc /= 3.0)) print *,'sub07 ng-3:', ccc, loc(ccc)
!$omp end parallel

  aaa = 10.0
  bbb = 20.0
  ccc = 30.0

!$omp parallel copyin(aaa, bbb, ccc)
  if (any(aaa /= 10.0)) print *,'sub07 ng-4:', aaa, loc(aaa)
  if (any(bbb /= 20.0)) print *,'sub07 ng-5:', bbb, loc(bbb)
  if (any(ccc /= 30.0)) print *,'sub07 ng-6:', ccc, loc(ccc)
!$omp end parallel
end

subroutine sub08()
complex(8),save,allocatable :: aaa, bbb, ccc
!$omp threadprivate(aaa, bbb, ccc)

!$omp parallel
  allocate(aaa, bbb, ccc)
  aaa = 1.0
  bbb = 2.0
  ccc = 3.0
  if (aaa /= 1.0) print *,'sub08 ng-1:', aaa, loc(aaa)
  if (bbb /= 2.0) print *,'sub08 ng-2:', bbb, loc(bbb)
  if (ccc /= 3.0) print *,'sub08 ng-3:', ccc, loc(ccc)
!$omp end parallel

aaa = 10.0
bbb = 20.0
ccc = 30.0

!$omp parallel copyin(aaa, bbb, ccc)
  if (aaa /= 10.0) print *,'sub08 ng-4:', aaa, loc(aaa)
  if (bbb /= 20.0) print *,'sub08 ng-5:', bbb, loc(bbb)
  if (ccc /= 30.0) print *,'sub08 ng-6:', ccc, loc(ccc)
!$omp end parallel
end

call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
print *, 'pass'
end
