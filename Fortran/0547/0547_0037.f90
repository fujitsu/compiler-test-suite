    subroutine s1
    character(80)            :: text
    integer                  :: i

    text=''
    forall (i=1:80, text(i:i) == ac(1)) text(i:i)=' '

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
