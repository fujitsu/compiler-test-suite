      program main
       integer,dimension(1000) :: code
       character(len=10),dimension(1000) :: name
       integer :: i,eof,n,key,no
       integer,external :: search
       open(99,file='snff90p41.input')
       do i=1,1000
          read (99,'(i7,1x,a10)',iostat=eof) code(i),name(i)
          if (eof/=0) exit
       end do
       n=i-1
       write (*,*) '* input key *'
       write (8,'(i7)') 10
       rewind 8
       read (8,'(i7)') key
       no =search(n,code,key)
       if (no >0 )then
           write(*,'(4(i7,1x,a10,2x))') code(no),name(no)
       else 
           write(*,*) key,'not found'
       end if
       print *,'pass'
      end program main
      function   search(n,code,key) result(no)
      integer :: n,key,no,i
      integer,dimension(n) :: code
      no =0
      do i=1,n
         if (code(i)==key) then
            no=i
            exit
         end if
      end do
      end function   search