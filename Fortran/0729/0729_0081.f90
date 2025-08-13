        real (kind=8):: a,b(1),c(1)
        type d
          real (kind=8) :: e
        end type d
        type (d) :: f
        a=459.358_4
        b=459.358_4
        c=(/459.358_4/)
        f=d(459.358_4)
        if (abs(a-b(1))>0.01)    print *,'fail #1'
        if (abs(b(1)-c(1))>0.01) print *,'fail #2'
        if (abs(c(1)-f%e)>0.01)  print *,'fail #3'

        write(117,1) a,b(1),c(1),f%e
1       format(1x,4d18.10)
        print *,'pass'
        end
