    subroutine s1
    character(80)            :: text(50)
    character(80)            :: text2(50)
    integer                  :: i
    text=''
    text(:)(20:21)='yy'
    text2=''
    text2(:)(40:41)='yy'
    n79=79
    n50=50

    forall (i=1:n79, k=1:n50, text(k)(i:i+1) == ac(1)//ac(1)) 
          text(k)(i:i)='x'
          text2(k)(i:i)='x'
    end forall
   do kk=1,50
    if (text(kk)( 1:19)/='') print *,111,kk
    if (text(kk)(20:20)/='x') print *,101,kk,text(kk)(20:20)
    if (text(kk)(21:21)/='y') print *,121,kk
    if (text(kk)(22:  )/='') print *,131,kk
    if (text2(kk)( 1:19)/='') print *,112,kk
    if (text2(kk)(20:20)/='x') print *,102,kk
    if (text2(kk)(22:39)/='') print *,231,kk
    if (text2(kk)(40:40)/='y') print *,222,kk
    if (text2(kk)(41:41)/='y') print *,223,kk
    if (text2(kk)(42:  )/='') print *,233,kk
   end do

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac='c'
       if (kk==1)ac='y'
     END FUNCTION
    end
    call s1
    print *,'pass'
    end
