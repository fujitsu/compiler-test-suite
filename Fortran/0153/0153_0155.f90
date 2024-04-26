        program main
        integer,parameter::n=2
        integer,parameter::m=3
        integer,parameter::length=n*m
        integer,dimension(n,m)::table
        table = reshape((/1,2,3,4,5,6/),(/n,m/))
        call ones(table,length)
        print *,'pass'
        end
        subroutine ones(table,length)
        integer table(1),length
        do i=1,length,1
          table(i) = table(i) + 6
        end do
        write(1,100)table
100     format(1H ,'ONES         ',3i5)
        end subroutine
