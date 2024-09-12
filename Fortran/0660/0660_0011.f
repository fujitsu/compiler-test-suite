      program main
       integer,dimension(:,:),pointer :: j
       integer,dimension(3,3),target  :: i
       i=0
       i(1,1) =1
       i(2,2)= 1
       i(3,3) =1
       j=>i
       write (*,*) i
       write (*,*) j
       print *,'pass'
      end program main
