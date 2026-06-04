use omp_lib
call aaaaa
print *,'pass'
end
subroutine aaaaa
integer*1 i1(10)
integer*2 i2(11:20)
integer*4 i4(21:30)
integer*8 i8(31:40)
!$omp task private(i,jj)
!$omp parallel
!$omp do schedule(static,10)
 do i=bit_size(i1)-7,bit_size(i2)-6
    do  concurrent(jj=bit_size(i1)-7:bit_size(i2)-6)
   i1(i)=jj
 enddo
 enddo
!$omp enddo
 if(all(i1.ne.(/(j,j=1,10)/))) print *,'err1'
!$omp endparallel
!$omp endtask
!$omp task private(i)
!$omp parallel
!$omp do schedule(static,20)
 do i=bit_size(i1)+3,bit_size(i2)+4
do  concurrent(jj=bit_size(i1)+3:bit_size(i2)+4)
   i2(i)=jj
 enddo
 enddo
!$omp enddo
 if(all(i2.ne.(/(j,j=11,20)/))) print *,'err2'
!$omp endparallel
!$omp endtask
!$omp task private(i,jj)
!$omp parallel
!$omp do schedule(dynamic,ubound(i4,1))
 do i=bit_size(i2)+5,bit_size(i4)-2
    do  concurrent(jj=bit_size(i2)+5:bit_size(i4)-2)
   i4(i)=jj
 enddo
 enddo
!$omp enddo
 if(all(i4.ne.(/(j,j=21,30)/))) print *,'err3'
!$omp endparallel
!$omp endtask
!$omp task private(i,jj)
!$omp parallel
!$omp do schedule(dynamic,ubound(i8,1))
 do i=bit_size(i4)-1,bit_size(i8)-24
do  concurrent(jj=bit_size(i4)-1:bit_size(i8)-24)
   i8(i)=jj
 enddo
 enddo
!$omp enddo
 if(all(i8.ne.(/(j,j=31,40)/))) print *,'err4',i8
!$omp endparallel
!$omp endtask
end
