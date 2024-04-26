
       interface
         subroutine sub(p,p2)
          integer,dimension(:) ::p,p2
         end subroutine sub
       end interface
       integer,dimension(10) ::p,p2
       
       p=10
       call sub(p,p2)
       do i=1,10
         if (p(i).ne.p2(i)) then
           print *,'??? ng ???'
         endif
       enddo
       print *,'*** ok ***'

       end

       subroutine sub(p,p2)
       integer,dimension(:) ::p,p2
       p2=p
       end
