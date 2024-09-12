      program main
       integer,dimension(:,:),allocatable:: a,b,c
       integer :: l,m,n  
       write(8,*) 4,3,4
       rewind 8     
       read (8,*) l,m,n
       allocate(a(l,m),b(m,n),c(l,n))
       write(9,*) 1,2,3,4,5,6,7,8,9,1,2,3
       rewind 9     
       read (9,*) (a(i,:),i=1,l)
       write(2,*) 1,2,3,4,5,6,7,8,9,0,1,2
       rewind 2     
       read (2,*) (b(i,:),i=1,m)
       c=0
       do i=1,l
          do j=1,n
          do k=1,m
            c(i,j)=c(i,j)+a(i,k)*b(k,j) 
          end do
          end do
       end do
       do i=1,l
          write (*,'(10i8)') c(i,:)
       end do
       print *,'pass'
      end program main
