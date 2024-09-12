      program main
       integer :: a,b,c,x,y      
       external maxmin 
       a=200; b=100; c=300
       call maxmin(a,b,c,x,y)
       write(*,'(2(a5,i5,3x))') 'max=',x,'min=',y
       print *,'pass'
      end program main
      subroutine maxmin(a,b,c,max,min)
       integer,intent(in) :: a,b,c
       integer,intent(out) :: max,min 
       integer,external :: min2
       if (a >= b) then
         if (a >= c) then
           max=a
           min=min2(b,c)
         else
          max=c
           min=min2(a,b)
         end if
       else if(b >= c) then
         max=b
         min=min2(a,c)
       else 
         max=c
         min=min2(a,b)
       end if
      end subroutine maxmin
      function min2(i,j) result(m)
       integer :: i,j,m      
       if (i >= j) then
         m=j   
       else 
         m=i   
       end if
      end function min2
