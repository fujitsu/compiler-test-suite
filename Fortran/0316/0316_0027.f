
       module com04
       integer,allocatable,dimension(:) ::a,b
       end

       program tcom04
       use com04
       allocate (a(1:10),b(1:10))
       a=10
       b=20
       do i=1,10
         if (a(i).ne.10 .or. b(i).ne.20) then
           print *,i,a(i),b(i)
           print *,'??? ng ???'
           stop 1
         endif
       enddo
       print *,'*** ok ***'
       
       end
