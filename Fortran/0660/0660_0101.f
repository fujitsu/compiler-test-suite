      program main
       type file
        integer           :: no
        character(len=20) :: name
        character(len=1)  :: gender
        integer           :: term1,term2
       end type file
       type (file) :: sdata
       integer   :: people,eof
       real :: zto,kto,ave1,ave2 
       open(8,file='007.input')
       people=0
       zto=0; kto=0
       do 
         read(8,'(I7,1X,A20,1X,A1,2I4)',iostat=eof)sdata
         if (eof/=0) exit
         if (sdata%term1 <= -1) sdata%term1 =0
         if (sdata%term2 <= -1) sdata%term2 =0
         zto  =zto+ sdata%term1
         kto  =kto+ sdata%term2 
         people=people+1
       end do
       ave1=zto/people
       ave2=kto/people
       write(*,'(A,F5.1)') 'term1 average',ave1 
       write(*,'(A,F5.1)') 'term2 average',ave2 
       print *,'pass'
      end program main
