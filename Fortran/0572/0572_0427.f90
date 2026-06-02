integer :: xx(2) = 4
       call s1(d=xx)
         print *,'pass'
           contains
             subroutine s1(b,d)
               type(*),optional::b(..)
                integer::d(..)
             if(present(b)) then
               if(any(lbound(b).ne.1))print*,"101"
               if(any(ubound(b).ne.1))print*,"101"
             end if
               if((lbound(d,1).ne.1))print*,"105"
               if((ubound(d,1).ne.2))print*,"106"
               if(rank(d).ne.1)print*,"107"
            end subroutine
          end
       

