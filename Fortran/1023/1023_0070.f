       program main
       implicit integer(a,b),real(i,l)
       a = 1
       b = 2
       i = 3
       l = 4
       print *,a,b,i,l
       call sub(a,b,i,l)
       end
       subroutine sub(a,b,i,l)
       implicit integer(a,b),real(i,l)
       print *,a,b,i,l
       end
