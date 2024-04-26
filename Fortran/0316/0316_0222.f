
       integer r(200)
       interface
         function fun()
          integer fun(200)
         end function fun
       end interface
       
       r=fun()

       do i=1,200 
         if (r(i).ne.1) then
           print *,'??? ng ???'
           stop 1
         endif 
       enddo
       print *,'*** ok ***'

       end

       function fun()
       integer fun(200)
       fun=1
       end
