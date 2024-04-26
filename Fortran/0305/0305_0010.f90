  complex*32 a(10,10), b(10,10) 
  
  do j=1,10
     do i=1,10
        a(i,j)=(1.,2.)
        b(i,j)=(3.,4.)
     enddo
  enddo

  do j=1,10
     do k=1,10
        do i=1,10
           b(i,j)=a(i,k)*b(k,j)
        enddo
     enddo
  enddo
  
  print *,b
end program
