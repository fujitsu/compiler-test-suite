integer a(10)
call  test01()
call  test02()
call  test03()
call  test04(a)
call  test05(a,10)
call  test06(a)
print *,'pass'
end

subroutine test01()
integer i
i=1
!$omp parallel firstprivate(i)
if (i.ne.1) print *,"fail"
!$omp endparallel
if (i.ne.1) print *,"fail"
!$omp parallel
 i=0
!$omp do firstprivate(i) lastprivate(i)
 do j=1,10
!$omp atomic
    i=i+j
 end do
!$omp enddo
!$omp endparallel
end

subroutine test02()
integer i
i=1
!$omp parallel firstprivate(i)
if (i.ne.1) print *,"fail"
!$omp endparallel
if (i.ne.1) print *,"fail"
!$omp parallel
 i=0
!$omp do firstprivate(i) lastprivate(i)
 do j=1,10
!$omp atomic
    i=i+j
 end do
!$omp enddo
write(8,*) i
!$omp endparallel
end

subroutine test03()
integer i(10)
i=(/(j,j=1,10)/)
!$omp parallel firstprivate(i)
if (all(i.ne.(/(j,j=1,10)/))) print *,"fail"
!$omp endparallel
if (all(i.ne.(/(j,j=1,10)/))) print *,"fail"
!$omp parallel
 i=0
!$omp do lastprivate(i)
 do j=1,10
    i=0
    i=i+j
 end do
!$omp enddo
!$omp endparallel
end

subroutine test04(i)
integer i(10)
i=(/(j,j=1,10)/)
!$omp parallel firstprivate(i)
if (all(i.ne.(/(j,j=1,10)/))) print *,"fail"
!$omp endparallel
if (all(i.ne.(/(j,j=1,10)/))) print *,"fail"
!$omp parallel
 i=0
!$omp do lastprivate(i)
 do j=1,10
    i=0
    i=i+j
 end do
!$omp enddo
!$omp endparallel
end
subroutine test05(i,ii)
integer i(ii)
i=(/(j,j=1,10)/)
!$omp parallel firstprivate(i)
!$omp endparallel
if (all(i.ne.(/(j,j=1,10)/))) print *,"fail"
!$omp parallel
 i=0
!$omp do lastprivate(i)
 do j=1,10
    i=0
    i=i+j
 end do
!$omp enddo
!$omp endparallel
end
subroutine test06(i)
integer i(*)
i(1:10)=(/(j,j=1,10)/)
!$omp parallel
if (all(i(1:10).ne.(/(j,j=1,10)/))) print *,"fail"
!$omp endparallel
if (all(i(1:10).ne.(/(j,j=1,10)/))) print *,"fail"
!$omp parallel
 i(1:10)=0
!$omp do
 do j=1,10
    i(1:10)=i(1:10)+j
 end do
!$omp enddo
!$omp endparallel
end
