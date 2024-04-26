          dimension a(10,10),b(10,10)
          c=1
          x=1
          d=1
          call sub(a,b,c,d,x)
          end
          subroutine sub(a,b,c,d,x)
          dimension a(10,10),b(10,10)
          do 10 i=1,10
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
            c = a(1,1) + b(2,1)
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
            c = a(1,1) + b(2,1)
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
            c = a(1,1) + b(2,1)
          end do
            c = a(1,1) + b(2,1)
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
            c = a(1,1) + b(2,1)
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
            c = a(i,j) + b(i,j)
          end do
            c = a(i,j) + b(i,j)
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
