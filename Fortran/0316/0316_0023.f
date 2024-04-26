
       module m1
         type tag
           integer a(200)
         endtype
       end

       program tavar10
       use m1
       type (tag) :: fun,f
      
       f=fun()
       do i=1,200
         if (f%a(i).ne.10) then
           print *,'??? ng ???'
           stop 2
         endif
       enddo

       print *,'*** ok ***'
       end
 
       function fun()
       use m1
       type (tag) :: fun
       fun%a=10
       do i=1,200
         if (fun%a(i).ne.10) then
           print *,'??? ng ???'
           stop 1
         endif
       enddo
       end
