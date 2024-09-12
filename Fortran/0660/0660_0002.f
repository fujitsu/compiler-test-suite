      program main
       integer,dimension(:,:),allocatable:: a,b,c
       integer :: m,n,i,j
       write(8,*) 4,3
       rewind 8     
       read (8,*) m,n
       allocate(a(m,n),b(m,n),c(m,n))
       write(9,*) 1,2,3,4,5,6,7,8,9,0,1,2
       rewind 9     
       read (9,*) (a(i,:),i=1,m)
       write(2,*) 1,2,3,4,5,6,7,8,9,0,1,2
       rewind 2     
       read (2,*) (b(i,:),i=1,m)
       do i=1,m
          do j=1,n
            c(i,j)=a(i,j)+b(i,j) 
          end do
       end do
       do i=1,m
          write (*,'(10i8)') c(i,:)
       end do
       print *,'pass'
      end program main
