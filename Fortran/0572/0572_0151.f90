subroutine s1
real,parameter:: a(1,1,2)=reshape([2,6],[1,1,2])
        integer :: res(1,2)=findloc(a,6,1)
        if(res(1,1)/=0) print *,101
        if(res(1,2)/=1) print *,102
        end
        call s1
        print *,'pass'
        end

