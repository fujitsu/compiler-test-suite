        integer*1 i1
        integer*2 i2
        integer*4 i4
        integer*8 i8
        namelist /na/ iii
        read (6,ii,rec=i1,iostat=ii) 
        read (6,ii,rec=i2,iostat=ii)
        read (6,ii,rec=i4,iostat=ii)
        read (6,ii,rec=i8,iostat=ii) 
        end
