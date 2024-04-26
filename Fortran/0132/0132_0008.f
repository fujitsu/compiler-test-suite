        integer*8,parameter::in1 = z'5555fffd00000000'
        integer*8,parameter::in2 = z'fffffffefffffffd'
        integer*8 i8
        i8 = in1
        print 1,i8/in2
        print 1,in1/in2
1       format(1h ,z16.16)
        end
