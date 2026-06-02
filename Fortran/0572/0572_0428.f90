integer :: xx(2) = 4
       call s1(d=xx)
         print *,'pass'
           contains
             subroutine s1(d,a,b,x,y)
               integer::d(..)
               type(*),optional::a(..)
               type(*),optional::b(..)
               type(*),optional::x(..)
               type(*),optional::y(..)
             if(present(b)) then
               if(any(lbound(b).ne.1))print*,"101"
               if(any(ubound(b).ne.1))print*,"101"
             end if  
             if(present(a)) then
               if(any(lbound(a).ne.1))print*,"101"
               if(any(ubound(a).ne.1))print*,"101"
             end if  
             if(present(x)) then
               if(any(lbound(x).ne.1))print*,"101"
               if(any(ubound(x).ne.1))print*,"101"
             end if
             if(present(y)) then
               if(any(lbound(y).ne.1))print*,"101"
               if(any(ubound(y).ne.1))print*,"101"
             end if
               if((lbound(d,1).ne.1))print*,"105"
               if((ubound(d,1).ne.2))print*,"106"
               if(rank(d).ne.1)print*,"107"
            end subroutine
          end
       

