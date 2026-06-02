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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
j=>i
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
j=>i
!$omp parallel default(private)
j=>i
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
!$omp parallel default(private)
j=>i
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
j=>i
i=1
!$omp parallel default(shared)
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
i=1
j=>i
!$omp parallel default(private)
j=>i
i=1
if (loc(i).ne.loc(j)) print *,"fail"
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
!$omp parallel default(private)
j=>i
i=1
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
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
if (loc(i).ne.loc(j)) print *,"fail"
!$omp do
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
j=>i
i=1
!$omp parallel default(shared)
j=>i
if (loc(i).ne.loc(j)) print *,"fail"
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(private)
i=1
j=>i
!$omp parallel default(private)
j=>i
i=1
if (loc(i).ne.loc(j)) print *,"fail"
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel

!$omp parallel default(shared )
i=1
!$omp parallel default(private)
j=>i
i=1
if (loc(i).ne.loc(j)) print *,"fail"
  do i=1,1
  end do
!$omp endparallel
!$omp do
do i=1,1
end do
!$omp endparallel
end 
