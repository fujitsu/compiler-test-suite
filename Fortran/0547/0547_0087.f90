    subroutine s1
    character(80)            :: text(80,80)
    integer                  :: i
    text=''
    text(1,1)(20:20)='y'
    n80=80

    forall (i=1:n80, text(1,1)(i:i) == ac(1)) 
      forall (k=1:n80, text(1,1)(k:k) == ac(1)) 
        forall (n=1:n80, text(1,1)(n:n) == ac(1)) 
          text(k,n)(i:i)='x'
        end forall
      end forall
    end forall
    do k1=1,80
    do k2=1,80
    do k3=1,80
    if (k1==20 .and. &
        k2==1   .and. &
        k3==1 ) cycle
    if (k1==20  .and. &
        k2==20  .and. &
        k3==20 ) cycle
    if (text(k2,k3)(k1:k1)/='') print *,101,k1,k2,k3
    end do
    end do
    end do

    if (text(20,20)(20:20)/='x') print *,1101
    if (text(1 , 1)(20:20)/='y') print *,1102

    contains
     pure function ac(kk)
       character*(kk) ac
       intent(in) ::kk
       ac=''
       if (kk==1) ac='y'
     END FUNCTION
    end
    call s1
    print *,'pass'
    end
