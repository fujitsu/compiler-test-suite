     logical :: a,b,c

     n=0
     a=.false. ; b=.false. ; c=.false.
     if (.not.(a.or.b.and.c)) then
       n=n+1
     else
       write(6,*) "NG"
     endif
     if (     (a.or.b.and.c)) then
       write(6,*) "NG"
     else
       n=n+1
     endif

     if (n/=2) write(6,*) "NG"
     print *,'pass'
     end
