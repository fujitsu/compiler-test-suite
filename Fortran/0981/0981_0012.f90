call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
integer , pointer :: j
integer , target  :: i
j=>i
!$omp parallel shared(i,j)
!$omp parallel shared(i,j)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel
!$omp parallel
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared)
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate) shared(j,i)
j=>i
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate)
j=>i
!$omp parallel default(firstprivate)
!$omp single
j=>i
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp endsingle
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel default(firstprivate)
!$omp single
j=>i
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp endsingle
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end

subroutine test02()
integer , pointer :: j
integer , target  :: i
j=>i
!$omp parallel shared(i,j)
!$omp parallel shared(i,j)
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel
i=1
!$omp parallel
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared)
i=1
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate) private(j,i)
j=>i
i=1
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate)
i=1
j=>i
!$omp parallel default(firstprivate)
!$omp single
j=>i
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp endsingle
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
i=1
!$omp parallel default(firstprivate)
!$omp single
j=>i
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp end single
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end
subroutine test03()
integer , pointer :: j
integer , target  :: i
j=>i
!$omp parallel shared(i,j)
!$omp parallel shared(i,j)
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel
i=1
!$omp parallel
j=>i
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared)
i=1
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate)
j=>i
i=1
!$omp parallel default(shared)
j=>i
if (loc(i).ne.loc(j)) write(6,*) "NG"
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(firstprivate)
i=1
j=>i
!$omp parallel default(firstprivate)
!$omp single
j=>i
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp endsingle
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
i=1
!$omp parallel default(firstprivate)
!$omp single
j=>i
i=1
if (loc(i).ne.loc(j)) write(6,*) "NG"
!$omp endsingle
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end
