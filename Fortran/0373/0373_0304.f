      real,dimension(10,10) :: a
      real,dimension(10,10) :: b,c
      do i=1,10
       do j=1,10
        a(i,j)= 1.0; b(i,j)= 2.0; c(i,j)= 3.0
       enddo
      enddo
      do i=1,10
       do j=1,10
        a(i,j)= b(i,j)+c(i,j)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
      do i=1,10,2
       do j=1,10
        a(i,j)= b(i,j)+c(i,j)
        a(i+1,j)= b(i+1,j)+c(i+1,j)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
      do i=1,10
       do j=1,10,2
        a(i,j)= b(i,j)+c(i,j)
        a(i,j+1)= b(i,j+1)+c(i,j+1)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
       end

