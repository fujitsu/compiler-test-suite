subroutine fun(dmy1)  bind(c,name='ss1')
                           implicit none
                           integer::dmy1
                              if(dmy1 .ne. 700) print*,"301"
                        end
                        subroutine fun(dmy1)  bind(c,name='ss2')
                           implicit none
                           integer::dmy1
                               if(dmy1 .ne. 500) print*,"401"
                        end
print *,'sngg619e : pass'
end
