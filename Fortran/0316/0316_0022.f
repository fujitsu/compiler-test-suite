
       interface
         function fun()
          integer,dimension(200) ::fun
         end function fun
       end interface

       integer,dimension(200) ::f
      
       f=fun()
       do i=1,200
         if (f(i).ne.10) then
           print *,'??? ng ???'
           stop 3
         endif
       enddo

       print *,'*** ok ***'
       end
 
       function fun()
       integer,dimension(200):: fun
       fun=10
       do i=1,200
         if (fun(i).ne.10) then
           print *,'??? ng ???'
           stop 1
         endif
       enddo
       end
