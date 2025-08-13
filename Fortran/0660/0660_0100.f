      program main
       type file
        integer           :: no
        character(len=20) :: name
        character(len=1)  :: gender
        integer           :: term1,term2
       end type file
       integer   :: eof
       type (file) :: sdata
       open(8,file='006.input')
       do 
         read(8,'(i7,1x,A20,1x,A1,2i4)',iostat=eof)sdata
         if (eof/=0) exit
         write(*,'(i7,1x,A20,1x,A1,2i4)')sdata
       end do
       write (*,*) 'file end'
       print *,'pass'
      end program main
