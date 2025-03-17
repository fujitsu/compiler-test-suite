integer, parameter :: n = 10
integer i, j, k,l,x
x = 10
!$omp parallel shared(x) private(i, j)
!$omp do collapse(4_2)
      do i = 1, n
         do j = 1, n
            do k = 1, n
               do l = 1, n
!$omp critical
                  x = x + 1
!$omp end critical
               end do
            end do
         end do
      end do
!$omp end parallel
if(x/=10010) then 
   print *,'err'
else
   print *,"ok"
end if

end

