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
                   function y1() result(r)
                       character::r
                    r='a'
                  end function
                   function y2() result(r)
                       type(y)  ::r
                    r%x=1
                  end function
                subroutine s()
                 procedure (y1),pointer :: p
              p=>y1
              if (p()/='a')print *,3
               end subroutine
                subroutine t()
                 procedure (y1),pointer :: p
              p=>y1
              if (p()/='a')print *,3
               end subroutine
                subroutine z()
                 procedure (y2),pointer :: p
                 type(y)::b
              p=>y2
              b=p()
              if (b%x/=1  )print *,3
               end subroutine
               end
                subroutine s1
                use m0
                p=>x2
                if (p()/=1) print *,202
               call s
               call t
               call z
               end
               call s1
               print *,'pass'
               end
                function x2() result(r)
                     integer::r
                    r=1
                  end function