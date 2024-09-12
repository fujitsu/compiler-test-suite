    subroutine s1
    character(80000)            :: text(50)
    character(80)            :: text3(50)
    character(80)            :: text2(50)
    text=''
    text(:)(20:20+100)=ac(1)
    text(:)(40:40+100)=ac(1)
    text2=''
    text3=''
    n50=50
    n80=80

    forall (n=1:n80, k=1:n50, text(k)(n:n+100) == ac(1)) 
          text3(k)(n:n)='x'
          text2(k)(n:n)='x'
          text (k)(n:n)='x'
    end forall
   do kk=1,50
    if (text3(kk)(20:20)/='x') print *,1101,kk
    if (text3(kk)(40:40)/='x') print *,101,kk
    if (text3(kk)(10:10)/='') print *,111,kk
    if (text2(kk)(40:40)/='x') print *,102,kk
    if (text2(kk)(20:20)/='x') print *,102,kk
    if (text2(kk)(10:10)/='') print *,112,kk
    if (text (kk)(40:40)/='x') print *,302,kk
    if (text (kk)(20:20)/='x') print *,302,kk
   end do

    contains
     pure function ac(kk)
       character*(kk+100) ac
       intent(in) ::kk
       ac=repeat(char(kk),101)
     END FUNCTION
    end
    call s1
    print *,'pass'
    end
