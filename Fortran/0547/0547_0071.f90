    subroutine s1
    character(80)            :: text
    integer                  :: i

    text=''
    n80=80
    forall (i=1:n80, text(i:i) /= ac(1)) text(i:i)='x'
    if (text/=repeat('x',n80)) print *,101

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
