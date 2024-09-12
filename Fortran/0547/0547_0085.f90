    subroutine s1
    character(80)            :: text(80)
    integer                  :: i
logical::xx=.true.
    text=''
    n2=2
    do n=1,len(text)
      text(:)(n:n)='y'
    end do

    forall (i=1:n2, xx) 
      forall (k=1:n2-1, text(1)(k:k) == ac(1)) 
          text(1)(i:i)='x'
      end forall
    end forall

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac='y'
     END FUNCTION
    end
    call s1
    print *,'pass'
    end
