call test01()
call test03()
call test04()
print *,'pass'
end
subroutine test04()
common/com04/ i1,i2,i3,i4,arr
integer(kind=4) :: i1
integer(kind=4) :: i2
integer(kind=4) :: i3
integer(kind=4) :: i4
integer arr(10),brr(10)
i1=1;i2=1;i3=1;i4=1
goto 10
!$omp parallel firstprivate(/com04/)
101 arr=1
brr=1
do i1=i2,i3,i4
i2=brr(i2)
i3=brr(i3)
i4=brr(i4)
brr=brr(1:9+i2:1)
brr=brr(1:9+i2:i1)
brr=brr(i1:9+i2:1)
end do
!$omp end parallel
10 continue
end

subroutine test03()
common/com03/ i1,i2,i3,i4,arr
integer(kind=4) :: i1
integer(kind=4) :: i2
integer(kind=4) :: i3
integer(kind=4) :: i4
integer arr(10),brr(10)
i1=1;i2=1;i3=1;i4=1
goto 10
!$omp parallel firstprivate(/com03/)
101 arr=1
brr=1
print *,(arr(i1),i1=i2,i3,i4)
print *,(arr(i2),i1=i2,i3,i4)
print *,(arr(i1+i2),i1=i2,i3,i4)
print *,(arr(i1*i3),i1=i2,i3,i4)
print *,(brr(i1),i1=i2,i3,i4)
print *,(brr(i2),i1=i2,i3,i4)
print *,(brr(i1+i2),i1=i2,i3,i4)
print *,(brr(i1*i3),i1=i2,i3,i4)
print *,((arr(i1)),i1=i2,i3,i4)
print *,((arr(i2)),i1=i2,i3,i4)
print *,((arr(i1+i2)),i1=i2,i3,i4)
print *,((arr(i1*i3)),i1=i2,i3,i4)
print *,((brr(i1)),i1=i2,i3,i4)
print *,((brr(i2)),i1=i2,i3,i4)
print *,((brr(i1+i2)),i1=i2,i3,i4)
print *,((brr(i1*i3)),i1=i2,i3,i4)
!$omp end parallel
10 continue
end

subroutine test01()
common/com01/ i1,i2,i3,i4
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=4) :: i3
integer(kind=8) :: i4
i1=1;i2=1;i3=1;i4=1
!$omp parallel firstprivate(/com01/)
do i1=1,1
do i2=1,1
do i3=1,1
do i4=1,1
end do
end do
end do
end do
!$omp end parallel
!$omp parallel firstprivate(/com01/)
do j1=1,i1
do j2=1,i2
do j3=1,i3
do j4=1,i4
end do
end do
end do
end do
!$omp end parallel
!$omp parallel firstprivate(/com01/)
do j1=i1,1
do j2=i2,1
do j3=i3,1
do j4=i4,1
end do
end do
end do
end do
!$omp end parallel
!$omp parallel firstprivate(/com01/)
do j1=1,1,i1
do j2=1,1,i2
do j3=1,1,i3
do j4=1,1,i4
end do
end do
end do
end do
!$omp end parallel
end
subroutine test02()
common/com02/ i1,i2,i3,i4,arr,ii,jj
integer(kind=1) :: i1
integer(kind=2) :: i2
integer(kind=4) :: i3
integer(kind=8) :: i4
integer arr(10),brr(10)
i1=1;i2=1;i3=1;i4=1;ii=1;jj=1;kk=1
!$omp parallel firstprivate(/com02/,kk)
arr=1
brr=1
print *,((arr(i1),brr(i2),i1= 1, 1, 1),i2= 1, 1, 1)
print *,((arr(i3),brr(i4),i3= 1, 1, 1),i4= 1, 1, 1)
print *,((arr(i3),brr(i3),i3=ii, 1, 1),ii=jj, 1, 1)
print *,((arr(i3),brr(i3),i3= 1,ii, 1),ii= 1,jj, 1)
print *,((arr(i3),brr(i3),i3= 1, 1,ii),ii= 1, 1,jj)
print *,((arr(i3),brr(i3),i3= 1, 1,jj),ii= 1, 1, 1)
print *,((arr(i3),brr(i3),i3= 1,jj, 1),ii= 1, 1, 1)
print *,((arr(i3),brr(i3),i3=jj, 1, 1),ii= 1, 1, 1)
print *,((arr(i3),brr(i3),i3= 1, 1, 1),ii=ii, 1, 1)
print *,((arr(i3),brr(i3),i3= 1, 1, 1),ii= 1,ii, 1)
print *,((arr(i3),brr(i3),i3= 1, 1, 1),ii= 1, 1,ii)
print *,((arr(i3),brr(i3),i3=i1, 1, 1),ii=i2, 1, 1)
print *,((arr(i3),brr(i3),i3= 1,i1, 1),ii= 1,i2, 1)
print *,((arr(i3),brr(i3),i3= 1, 1,i1),ii= 1, 1,i2)
print *,((arr(i3+jj),brr(jj+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj+i3),brr(ii+jj),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3+ii),brr(i3+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii+i3),brr(ii+i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*ii),brr(i3*ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj*i3),brr(jj*i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj*i3+ii),brr(jj*i3+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii*ii*i3),brr(ii*ii*i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii*ii*ii*i3),brr(ii*i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*ii),brr(i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(1+i3+jj),brr(1+jj+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj+1+i3),brr(ii+1+jj),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(1+i3+ii),brr(i3+1+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii+i3),brr(ii+i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(1+i3*ii),brr(i3*1+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(1+jj*i3),brr(jj*1+i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3+jj+kk),brr(jj+kk+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj+i3+kk),brr(ii+kk+jj),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3+ii+kk),brr(i3+kk+ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii+i3+kk),brr(ii+kk+i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*ii+kk),brr(i3+kk*ii),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj*i3+kk),brr(jj+kk*i3),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*kk+jj),brr(jj+ii*kk),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj*kk+i3),brr(ii+jj*kk),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*kk+ii),brr(i3+ii*kk),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(ii*kk+i3),brr(ii+i3*kk),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(i3*kk*ii),brr(i3*ii*kk),i3= 1, 1, 1),ii= 1, 1, 1)
print *,((arr(jj*kk*i3),brr(jj*i3*kk),i3= 1, 1, 1),ii= 1, 1, 1)
!$omp end parallel
end
