    subroutine s1
    character(80000)            :: text
    integer                  :: i

    text=''
    text(50001:60000)=repeat('x',10000)
    n1=1
    n10000=1000
    forall (i=n1:70000:n10000, text(i:i+9999) == ac(1)) text(i:i)='y'

    do n=1,len(text)
      if (n==50001) then
         if (text(n:n)/='y') print *,101
      else if (n>=50002 .and. n<=60000) then
         if (text(n:n)/='x') print *,103
      else
         if (text(n:n)/='') print *,102
      endif
    end do
    contains
     pure function ac(kk)
       character*(kk+9999) ac
       intent(in) ::kk
       ac=repeat('x',10000)
     END FUNCTION
    end
    call s1
    print *,'pass'
    end
