class(*),pointer,dimension(:)::a3
allocate(character*(1)::a3(1))

        k=0
        select type(a3)
         type is (character*(*))
        a3= [character(kind=1)::'12']
        if (len(a3)/=1) print *,10001
        if (any(a3/='1')) print *,2001
        k=1
        end select
        if (k/=1) print *,101
        print *,'pass'
        end
