PROGRAM main
        implicit none
        
        integer,parameter :: a=16,b=8,val=8

        type(real)                   :: var_a,ret_a
        type(real(8))                :: var_b,ret_b
        type(real(kind=8))           :: var_c,ret_c
        type(real(kind=(12-4)))      :: var_d,ret_d
        type(real(12-4))             :: var_e,ret_e
        type(real(2*4))              :: var_f,ret_f
        type(real(((16)-(2*4))))     :: var_g,ret_g
        type(real*8)                 :: var_h,ret_h
        type(real(kind = val))       :: var_i,ret_i
        type(real(kind=(a-b)))       :: var_j,ret_j
        type(real(a-8))              :: var_k,ret_k
        type(real(16-b))             :: var_l,ret_l

        var_a=1.1
        var_b=2.1
        var_c=3.1
        var_d=4.1
        var_e=5.1
        var_f=6.1
        var_g=7.1
        var_h=8.1
        var_i=9.1
        var_j=1.2
        var_k=1.3
        var_l=1.4

        ret_a=func1(var_a)
        if(kind(var_a) /= kind(ret_a)) print*,101

        ret_b=func2(var_b)
        if(kind(var_b) /= kind(ret_b)) print*,102

        ret_c=func3(var_c)
        if(kind(var_c) /= kind(ret_c)) print*,103

        ret_d=func4(var_d)
        if(kind(var_d) /= kind(ret_d)) print*,104

        ret_e=func5(var_e)
        if(kind(var_e) /= kind(ret_e)) print*,105

        ret_f=func6(var_f)
        if(kind(var_f) /= kind(ret_f)) print*,106

        ret_g=func7(var_g)
        if(kind(var_g) /= kind(ret_g)) print*,107

        ret_h=func8(var_h)
        if(kind(var_h) /= kind(ret_h)) print*,108

        ret_i=func9(var_i)
        if(kind(var_i) /= kind(ret_i)) print*,109

        ret_j=func10(var_j)
        if(kind(var_j) /= kind(ret_j)) print*,110

        ret_k=func11(var_k)
        if(kind(var_j) /= kind(ret_k)) print*,111

        ret_l=func12(var_l)
        if(kind(var_l) /= kind(ret_l)) print*,112

print*,"pass"

contains
        
        type(real)   FUNCTION func1(aa)
                        type(real) :: aa
                        func1=aa
                        END FUNCTION func1
        
        type(real(8))FUNCTION func2(aa)
                        type(real(8)) :: aa
                        func2=aa
                        END FUNCTION func2

 type(real(kind=8))  FUNCTION func3(aa)
                        type(real(kind=8)) :: aa
                        func3=aa
                        END FUNCTION func3

 type(real(kind=(12-4))) FUNCTION func4(aa)
                            type(real(kind=(12-4))) :: aa
                            func4=aa
                            END FUNCTION func4

 type(real(12-4))    FUNCTION func5(aa)
                        type(real(12-4)) :: aa
                        func5=aa
                        END FUNCTION func5

 type(real(2*4))     FUNCTION func6(aa)
                        type(real(2*4)) :: aa
                        func6=aa
                        END FUNCTION func6

 type(real(((16)-(2*4))))    FUNCTION func7(aa)
                                type(real(((16)-(2*4)))) :: aa
                                func7=aa
                                END FUNCTION func7

 type(real*8)        FUNCTION func8(aa)
                        type(real*8) :: aa
                        func8=aa
                        END FUNCTION func8

 type(real(kind=val))FUNCTION func9(aa)
                        type(real(kind=val)) :: aa
                        func9=aa
                        END FUNCTION func9

 type(real(kind=a-b))FUNCTION func10(aa)
                        type(real(kind=a-b)) :: aa
                        func10=aa
                        END FUNCTION func10

 type(real(kind=a-8))FUNCTION func11(aa)
                        type(real(kind=a-8)) :: aa
                        func11=aa
                        END FUNCTION func11

 type(real(kind=16-b))FUNCTION func12(aa)
                         type(real(kind=16-b)) :: aa
                         func12=aa
                         END FUNCTION func12

END PROGRAM main

