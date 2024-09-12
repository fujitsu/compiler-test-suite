    subroutine s1
    character(80)            :: text
    character(80)            :: text2
    integer                  :: i
    text=''
    text(20:20)=char(1)
    text(40:40)=char(1)
    text2=''
    k80=80

    forall (i=1:k80, text(i:i) == ac(1)) 
          text(i:i)='x'
          text2(i:i)='x'
    end forall
    if (text(20:20)/='x') print *,101
    if (text2(40:40)/='x') print *,102

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac=char(kk)
     END FUNCTION
    end
    print *,'pass'
    end
