              real a(10,10),b(10,10),c(10,10)
              a=1;b=2;c=0
              do i=1,10
              do j=1,10
                c(i,j)= a(i,j) + b(i,j)
              end do
              end do
              print *,c(1,10),c(10,10)
              end
