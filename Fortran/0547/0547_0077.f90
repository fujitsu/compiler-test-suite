    subroutine s1
    character(80)            :: text(80)
    character(80)            :: text2(80)
    integer                  :: i
    text=''
    text(:)(20:20)=char(1)
    text(:)(40:40)=char(1)
    text2=''
    n80=80

    forall (i=1:n80, text(1)(i:i) == ac(1)) 
      forall (k=1:n80, text(1)(k:k) == ac(1)) 
          text(k)(i:i)='x'
      end forall
    end forall
    do k1=1,80
    do k2=1,80
    if ((k1==20 .or. k1==40) .or. &
        (k2==20 .or. k2==40) ) cycle
    if (text(k1)(k2:k2)/='') print *,101,k1,k2
    end do
    end do

    if (text(20)(20:20)/='x') print *,1101
    if (text(40)(40:40)/='x') print *,1102

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
