    subroutine s1(n80)
    character(n80)            :: text(n80)
    integer                  :: i
logical::xx=.true.
    text=''
    do n=1,len(text)
      text(:)(n:n)='y'
    end do
    n2=2

    forall (i=1:n2, xx) 
      forall (k=1:n2-1, text(1)(k:k) == ac(1)) 
        forall (n=1:3, xx) 
          text(n)(i:i)='x'
        end forall
      end forall
    end forall

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac='y'
     END FUNCTION
    end
    call s1(80)
    print *,'pass'
    end
