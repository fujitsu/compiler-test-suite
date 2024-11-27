        integer*1 i1
        integer*2 i2
        integer*4 i4
        integer*8 i8
        parameter (i1=120,i8=150)
        parameter (i2=120,i4=150)
        write (i1,*) 1
        write (i2,*) 1
        write (i4,*) 1
        write (i8,*) 1
        rewind i1
        rewind i2
        rewind i4
        rewind i8
        end
