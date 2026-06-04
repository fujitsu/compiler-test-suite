 integer :: xx(2) = 4
 call s1()
 call s1(xx,xx,xx,xx)
 call s1(xx)
  print *,'pass'
   contains
             subroutine s1(a,b,c,d)
              integer,optional::a(..)
              type(*),optional::b(..)
              type(*),optional::c(..)
              integer,optional::d(..)
              if (present(a))then
              if(rank(a).ne.1)print*,"101"
              end if
              if (present(b)) then
              if(rank(b).ne.1)print*,"102"
              end if
              if (present(c)) then
              if(rank(c).ne.1)print*,"103"
              end if
              if (present(d)) then
              if(rank(d).ne.1)print*,"104"
              end if
            end subroutine
          end

