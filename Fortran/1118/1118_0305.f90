call aaaaa
print *,'pass'
end
subroutine aaaaa
integer*1 i1
integer*2 i2
integer*4 i4
integer*8 i8
i1=0
i2=0
i4=0
i8=0
!$omp task default(private)
i1=10
!$omp parallel do lastprivate(i1)
  do i1=1,bit_size(i1)
!$omp parallel do lastprivate(i2)
  do i2=1,bit_size(i2) 
!$omp parallel do lastprivate(i4)
  do i4=1,bit_size(i4)
!$omp parallel do lastprivate(i8)
  do i8=1,bit_size(i8)
  enddo
!$omp endparalleldo
  enddo
!$omp endparalleldo
  enddo
!$omp endparalleldo
  enddo
!$omp endparalleldo
!$omp endtask
end
