 subroutine s1()
 integer :: aa,bb=2
 aa = bb+2
 associate(cc=>aa)
!$omp parallel private(aa)
 aa=5
!$omp parallel shared(aa)
 aa = 3
 if(cc .ne. 4)print*,"101"
!$omp end parallel
!$omp end parallel
 end associate

 end subroutine

 call s1
 print*,"pass"
 end
