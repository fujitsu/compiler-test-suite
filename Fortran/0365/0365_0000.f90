      subroutine case1(a, b, c, n, k, m)
      real a(n,k), b(k,m), c(n,m),tmp
      integer j1
      do j = 1, m
         do i = 1, n
            tmp = 0
            do j1 = 1, k
               tmp = tmp + a(i,j1)*b(j1,j)
            end do
            c(i,j) = tmp
         end do
      end do
      end
      subroutine case2(a, b, c, k, m) 
      real a(k), b(k,m), c(m) ,tmp
      integer i
      do j = 1, m 
         tmp = 0 
         do i = 1, k 
            tmp = tmp + a(i)*b(i,j) 
         end do 
         c(j) = tmp
      end do 
      end  
      subroutine case3(a, b, c, n, k) 
      real a(n,k), b(k), c(n) ,tmp
      integer i, j
      do j = 1, n 
         tmp = 0 
         do i = 1, k 
            tmp = tmp + a(j,i)*b(i) 
         end do 
	 c(j) = tmp
      end do 
      end  
      subroutine intr1(a, b, c, n, k, m)
      real a(n,k), b(k,m), c(n,m)
      c=matmul(a,b)
      end
      subroutine intr2(a, b, c, k, m) 
      real a(k), b(k,m), c(m) 
      c=matmul(a,b)
      end  
      subroutine intr3(a, b, c, n, k) 
      real a(n,k), b(k), c(n) 
      c=matmul(a,b)
      end  
      program main
      parameter(n=100,m=100,k=100)
      call test1
      call test2
      call test3
      contains
	recursive subroutine test1
        real mat1(n,k),mat2(k,m),a1(n,m),a2(n,m)
	do i=1,n
	  do j=1,k
	    mat1(i,j) = (i-n/2) * (j-k/2)
          end do
        end do
	do i=1,k
	  do j=1,m
	    mat2(i,j) = (i-k/2) * (j-m/2)
          end do
        end do
	call case1(mat1,mat2,a1,n,k,m)
	call intr1(mat1,mat2,a2,n,k,m)
	a2=merge(1.0,a2,a2==0)
	a1=merge(1.0,a1,a1==0)
	if( all(abs((a1-a2)/a1).le.0.1e-4) ) then
	  print *,' OK 1'
	else 
	  print *,' NG 1'
	endif
	end subroutine
	recursive subroutine test2
        real mat1(k),mat2(k,m),a1(m),a2(m)
	do i=1,k
	  mat1(i) = (i-k/2)
	  do j=1,m
	    mat2(i,j) = (i-k/2) * (j-m/2)
          end do
        end do
	call case2(mat1,mat2,a1,k,m)
	call intr2(mat1,mat2,a2,k,m)
	if( all(a1.eq.a2) ) then
	  print *,' OK 2'
	else 
	  print *,' NG 2'
	endif
	end subroutine
	recursive subroutine test3
        real mat1(n,k),mat2(k),a1(n),a2(n)
	do i=1,n
	  do j=1,m
	    mat1(i,j) = (i-n/2) * (j-m/2)
          end do
	  mat2(i) = (i-n/2)
        end do
	call case3(mat1,mat2,a1,n,k)
	call intr3(mat1,mat2,a2,n,k)
	if( all(a1.eq.a2) ) then
	  print *,' OK 3'
	else 
	  print *,' NG 3'
	endif
	end subroutine
      end
