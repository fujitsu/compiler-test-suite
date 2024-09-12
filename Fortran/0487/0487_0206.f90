                  subroutine sss(dmy1) bind(c, name='test1')
                   implicit none
                     integer::dmy1
                       dmy1=200
                  end subroutine

print *,'pass'
               end
                  subroutine sub(dproc)
                  interface
                    subroutine sss(dmy1) bind(c,name='test1')
                   integer::dmy1
                   end subroutine
                   end interface
                 procedure(sss) ::dproc
                  integer::aa
                  call sss(aa )
                end subroutine
