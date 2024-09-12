      program main
       integer,dimension(30):: dt=(/
     - 12,18,9,8,2,15,8,11,4,10,2,3,5,16,0,14,5,15,
     - 14,8,5,8,19,18,0,17,9,1,14,13/)
       integer,dimension(0:19) ::gr
       integer :: i,j
       gr=0
       do i=1,30
          gr(dt(i))=gr(dt(i))+1
       end do
       do i=0,19
         write(*,'(I4,a1,i3,a1,30A1)')
     - i,'|',gr(i),'|',('*',j=1,gr(i))
       end do
       write(*,*) '---|---|----+----1----+----2'
       print *,'pass'
      end program main
