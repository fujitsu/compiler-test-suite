              module m0
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
                subroutine s()
                 procedure (y1),pointer :: p
              p=>y1
              if (p()/='a')print *,3
               end subroutine
               end
                subroutine s1
                use m0
                p=>x2
                if (p()/=1) print *,202
               call s
               end
               call s1
               print *,'pass'
               end
                function x2() result(r)
                     integer::r
                    r=1
                  end function
