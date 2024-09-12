integer::i3=1, i1=1, i2=1, i4=1,i5=1
integer::j1=1
integer::a=1
integer::b=1
!$omp  parallel
do j1=1,2
enddo
!$omp  parallel
!$omp  do  collapse(2) 
 do i1=1,10
 do i2=1,10
 do i3=1,10
 do i4=1,10
 do i5=1,10
 b = b + a
 enddo
 enddo
 enddo
 enddo
 enddo
!$omp enddo
if( i3 .ne. 11) print *,'ng1'
!$omp  end parallel
!$omp  end parallel
if( i3 .ne. 1) print *,'ng2'
print *,"pass"
end

