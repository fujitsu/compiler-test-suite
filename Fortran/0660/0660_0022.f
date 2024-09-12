      program main
       integer,dimension(1000) :: code
       character(len=10),dimension(1000) :: name
       integer :: i,eof,n
       open(99,file='snff90p40.input')
       do i=1,1000
          read (99,'(i7,1x,a10)',iostat=eof) code(i),name(i)
          if (eof/=0) exit
       end do
       n=i-1
       write(*,'(4(i7,1x,a10,2x))') (code(i),name(i),i=1,n)
       print *,'pass'
      end program main
