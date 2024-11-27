        double precision z
        integer i
        character*8 a
        a='D1RF'
        read(a,"(F8.0)",err=10)z
        print*,'no real error',z
        goto 30
 10     continue
20      read(a,"(I8)",err=30)z
        print*,'no integer error',z
        goto 40
 30     continue
 40     continue
        print *,'pass'
        end
