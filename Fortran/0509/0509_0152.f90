              module m0
type y
  integer::x
end type
                  interface
                   function x2() result(r)
                        integer::r
                   end function
                  end interface
                  procedure (x2),pointer :: p
                  contains
                function   z() result(p)
                 procedure (y2),pointer :: p
                 procedure (p ),pointer :: p1
                 procedure (p1),pointer :: p2
                 type(y)::b
              p=>y2
              b=p()
              if (b%x/=1  )print *,3
              p1=>p
              b=p1()
              if (b%x/=1  )print *,3
              p2=>p1
              b=p2()
              if (b%x/=1  )print *,3
               end 
                   function y1() result(r)
                       character::r
                    r='a'
                  end function
                   function y2() result(r)
                       type(y)  ::r
                    r%x=1
                  end function
                function   s() result(p)
                 procedure (y1),pointer :: p
                 procedure (p ),pointer :: p1
                 procedure (p1),pointer :: p2
              p=>y1
              if (p()/='a')print *,3
              p1=>p   
              if (p1()/='a')print *,3
              p2=>p1
              if (p2()/='a')print *,3
               end 
                function   t() result(p)
                 procedure (y1),pointer :: p
                 procedure (p ),pointer :: p1
                 procedure (p1),pointer :: p2
              p=>y1
              if (p()/='a')print *,3
              p1=>p 
              if (p1()/='a')print *,3
              p2=>p1
              if (p2()/='a')print *,3
               end 
               end 
                subroutine s1
                use m0
                 procedure (y1),pointer :: w 
                 procedure (y2),pointer :: q 
                 type(y)::b
                p=>x2
                if (p()/=1) print *,202
                w=>s()
               if ( w()/='a') print *,801
                w=>t()
               if ( w()/='a') print *,802
               q=> z()
               b=   q()
               if ( b%x /=1  ) print *,803
               end
               call s1
               print *,'pass'
               end
                function x2() result(r)
                     integer::r
                    r=1
                  end function
