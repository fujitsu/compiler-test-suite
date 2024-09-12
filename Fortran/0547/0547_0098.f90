    subroutine s1(n80)
    character(n80)            :: text(n80)
    character(n80)            :: text2(n80)
    integer                  :: i
    text=''
    text(:)(20:20)=char(1)
    text(:)(40:40)=char(1)
    text2=''

    forall (i=1:n80, text(1)(i:i) == char(1)) 
      forall (k=1:n80, text(1)(k:k) == ac(1)) 
          text(k)(i:i)='x'
      end forall
    end forall

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac=char(kk)
     END FUNCTION
    end
    call s1(80)
    print *,'pass'
    end
