     program main
     integer,target::t
     integer,pointer::p
     t=1
     p=>t
     if (p/=1) print *,191
     allocate(p,source=2)
     if (p/=2) print *,192
    



     print *,'sngg461t : pass'
     end program

