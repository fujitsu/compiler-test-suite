      real,dimension(50,50) :: a
      real,dimension(50,50) :: b,c
      do i=1,50
       do j=1,50
        a(i,j)= 1.0; b(i,j)= 2.0; c(i,j)= 3.0
       enddo
      enddo
      do i=1,50
       do j=1,50
        a(i,j)= b(i,j)+c(i,j)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
      do i=1,50,2
       do j=1,50
        a(i,j)= b(i,j)+c(i,j)
        a(i+1,j)= b(i+1,j)+c(i+1,j)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
      do i=1,50
       do j=1,50,2
        a(i,j)= b(i,j)+c(i,j)
        a(i,j+1)= b(i,j+1)+c(i,j+1)
       enddo
      enddo
      write(*,*) 'a= ',a 
      write(*,*) 'b= ',b 
      write(*,*) 'c= ',c 
       end


