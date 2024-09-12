    integer,target :: trg_main=1
    integer,pointer :: ptr=>trg_main
        if (ptr/=1) print *,1001
     block
        integer,target :: trg=2
        integer,pointer :: ptr=>trg
        if (ptr/=2) print *,101
     end block
        if (ptr/=1) print *,1002
     print *,'pass'
     end
