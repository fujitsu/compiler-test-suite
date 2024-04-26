PROGRAM main
        implicit none
        
        integer,parameter :: a=16,b=8,val=8

        type(LOGICAL)                   :: var_a,ret_a
        type(LOGICAL(8))                :: var_b,ret_b
        type(LOGICAL(kind=8))           :: var_c,ret_c
        type(LOGICAL(kind=(12-4)))      :: var_d,ret_d
        type(LOGICAL(12-4))             :: var_e,ret_e
        type(LOGICAL(2*4))              :: var_f,ret_f
        type(LOGICAL(((16)-(2*4))))     :: var_g,ret_g
        type(LOGICAL*8)                 :: var_h,ret_h
        type(LOGICAL(kind = val))       :: var_i,ret_i
        type(LOGICAL(kind=(a-b)))       :: var_j,ret_j
        type(LOGICAL(a-8))              :: var_k,ret_k
        type(LOGICAL(16-b))             :: var_l,ret_l

        var_a=.true.
        var_b=.true.
        var_c=.true.
        var_d=.true.
        var_e=.true.
        var_f=.true.
        var_g=.true.
        var_h=.true.
        var_i=.false.
        var_j=.false.
        var_k=.false.
        var_l=.false.

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
        if(kind(var_g) /= kind(ret_g)) print*,108

        ret_h=func8(var_h)
        if(kind(var_h) /= kind(ret_h)) print*,107

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
        
        type(LOGICAL)   FUNCTION func1(aa)
                        type(LOGICAL) :: aa
                        func1=aa
                        END FUNCTION func1
        
        type(LOGICAL(8)) FUNCTION func2(aa)
                        type(LOGICAL(8)) :: aa
                        func2=aa
                        END FUNCTION func2

        type(LOGICAL(kind=8))  FUNCTION func3(aa)
                        type(LOGICAL(kind=8)) :: aa
                        func3=aa
                        END FUNCTION func3

 type(LOGICAL(kind=(12-4))) FUNCTION func4(aa)
                            type(LOGICAL(kind=(12-4))) :: aa
                            func4=aa
                            END FUNCTION func4

 type(LOGICAL(12-4))    FUNCTION func5(aa)
                        type(LOGICAL(12-4)) :: aa
                        func5=aa
                        END FUNCTION func5

 type(LOGICAL(2*4))     FUNCTION func6(aa)
                        type(LOGICAL(2*4)) :: aa
                        func6=aa
                        END FUNCTION func6

 type(LOGICAL(((16)-(2*4))))    FUNCTION func7(aa)
                                type(LOGICAL(((16)-(2*4)))) :: aa
                                func7=aa
                                END FUNCTION func7

 type(LOGICAL*8)        FUNCTION func8(aa)
                        type(LOGICAL*8) :: aa
                        func8=aa
                        END FUNCTION func8

 type(LOGICAL(kind=val)) FUNCTION func9(aa)
                        type(LOGICAL(kind=val)) :: aa
                        func9=aa
                        END FUNCTION func9

 type(LOGICAL(kind=a-b)) FUNCTION func10(aa)
                        type(LOGICAL(kind=a-b)) :: aa
                        func10=aa
                        END FUNCTION func10

 type(LOGICAL(kind=a-8)) FUNCTION func11(aa)
                        type(LOGICAL(kind=a-8)) :: aa
                        func11=aa
                        END FUNCTION func11

 type(LOGICAL(kind=16-b)) FUNCTION func12(aa)
                         type(LOGICAL(kind=16-b)) :: aa
                         func12=aa
                         END FUNCTION func12

END PROGRAM main

