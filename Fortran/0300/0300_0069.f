       real * 8 a(10,10),b(10,10),c(10,10)
       data a,b,c/100*1.,100*2.,100*3./
!$omp parallel DO
       do j=2,10 
       do i=2,10
         a(i,j) = a(i,j)+b(i,j)
       enddo
       enddo
!$omp end parallel do
       write(6,*) a
       stop
       end
