      program main
       integer :: a,b,c,i1,i2,i3
       integer,external :: max
       write (*,*) max(1,2,3)
       a=20; b=10; c=30
       write (*,*) max(a,b,c)
       i1=100;i2=200;i3=300
       write(*,*) max(i1,i2,i3)
       print *,'pass'
      end program main
      function max(a,b,c) result(res)
       integer :: a,b,c,res
       if (a >= b) then
         if (a >= c) then
           res=a
         else
          res=c
         end if
       else if(b >= c) then
         res=b
       else 
         res=c
       end if
      end function max
