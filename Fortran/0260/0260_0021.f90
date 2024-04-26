PROGRAM main
        implicit none
        
        type(double precision)                   :: var_a,ret_a
        var_a=12.12
        ret_a=func1(var_a)
        if(kind(var_a) /= kind(ret_a)) print*,101
        
print*,"pass"

contains
        
        type(double precision)   FUNCTION func1(aa)
                        type(double precision) :: aa
                        func1=aa
                        END FUNCTION func1
END PROGRAM main

