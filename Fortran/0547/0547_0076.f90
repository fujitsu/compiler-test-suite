    subroutine s1
    character(80)            :: text(50)
    character(80)            :: text2(50)
    integer                  :: i
    text=''
    text(:)(20:20)=char(1)
    text(:)(40:40)=char(1)
    text2=''
    n80=80

    forall (i=1:n80, k=1:50, text(k)(i:i) == ac(1)) 
          text(k)(i:i)='x'
          text2(k)(i:i)='x'
    end forall
   do kk=1,50
    if (text(kk)(20:20)/='x') print *,101,kk
    if (text(kk)(40:40)/='x') print *,111,kk
    if (text2(kk)(20:20)/='x') print *,102,kk
    if (text2(kk)(40:40)/='x') print *,112,kk
   end do

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac=char(kk)
     END FUNCTION
    end
     call s1
    print *,'pass'
    end
