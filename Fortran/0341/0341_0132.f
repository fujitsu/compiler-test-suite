          dimension a(5,5),b(5,5)
          do 10 i=1,5
            a(i,:) = i
            b(i,:) = i+1
10        continue
c
          x=0
          do i=1,5
            a(i,1) = a(i,1)+1
            b(i,1) = b(i,1)+1
            c = a(i,1) + b(i,1)
            x = max(x,c)
          end do
c
          do i=1,5
            a(i,1) = a(i,1)+1
            b(i,1) = b(i,1)+1
            c = a(i,1) + b(i,1)
            x = max(x,c)
          end do
c
          x=0
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
c
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
c
          do j=1,5
          x=0
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
c
          do j=1,5
          d=0
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
c
          x=0
          do k=1,5
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
          end do
c
          do k=1,5
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
          end do
c
          do k=1,5
          x=0
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
          end do
c
          do k=1,5
          d=0
          do j=1,5
          do i=1,5
            a(i,j) = a(i,j)+1
            b(i,j) = b(i,j)+1
            c = a(i,j) + b(i,j)
            x = max(x,c)
          end do
          end do
          end do
          print '(f11.8)',x
          end
