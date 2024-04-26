PROGRAM main
        implicit none
        
        integer,parameter :: a=16,b=8,val=8

        type(integer)                   :: var_a,ret_a
        type(integer(8))                :: var_b,ret_b
        type(integer(kind=8))           :: var_c,ret_c
        type(integer(kind=(12-4)))      :: var_d,ret_d
        type(integer(12-4))             :: var_e,ret_e
        type(integer(2*4))              :: var_f,ret_f
        type(integer(((16)-(2*4))))     :: var_g,ret_g
        type(integer*8)                 :: var_h,ret_h
        type(integer(kind = val))       :: var_i,ret_i
        type(integer(kind=(a-b)))       :: var_j,ret_j
        type(integer(a-8))              :: var_k,ret_k
        type(integer(16-b))             :: var_l,ret_l

        var_a=10
        var_b=20
        var_c=30
        var_d=40
        var_e=50
        var_f=60
        var_g=70
        var_h=80
        var_i=90
        var_j=100
        var_k=110
        var_l=120

        ret_a=func1(var_a)
        if(kind(var_a) /= kind(ret_a)) print*,101
       
         ret_b=func2(var_b)
        if(kind(var_b) /= kind(ret_b)) print*,102

        ret_c=func3(var_c)
        if(kind(var_c) /= kind(ret_c)) print*,103

        ret_d=func4(var_d)
        if(kind(var_d) /= kind(ret_d)) print*,103

        ret_e=func5(var_e)
        if(kind(var_e) /= kind(ret_e)) print*,104

        ret_f=func6(var_f)
        if(kind(var_f) /= kind(ret_f)) print*,105

        ret_g=func7(var_g)
        if(kind(var_g) /= kind(ret_g)) print*,106

        ret_h=func8(var_h)
        if(kind(var_h) /= kind(ret_h)) print*,107

        ret_i=func9(var_i)
        if(kind(var_i) /= kind(ret_i)) print*,108

        ret_j=func10(var_j)
        if(kind(var_j) /= kind(ret_j)) print*,109

        ret_k=func11(var_k)
        if(kind(var_j) /= kind(ret_k)) print*,110

        ret_l=func12(var_l)
        if(kind(var_l) /= kind(ret_l)) print*,111

print*,"pass"

contains
        
        type(integer)   FUNCTION func1(aa)
                        type(integer),value :: aa
                        type(integer(4)),pointer::ptr
                        type(integer*4),target::trg=99
                        type(integer(kind=8)),allocatable::alc
                        allocate(ptr,alc)
                        ptr=10
                        if(ptr/=10)print*,'999',ptr
                        alc=20
                        ptr=>trg
                        if(ptr/=99)print*,'1000',ptr
                        if(alc/=20)print*,'1001'
                        if(kind(ptr)/=4)print*,'1002'
                        if(kind(alc)/=8)print*,'1003'
                        if(.not.allocated(alc))print*,'1004'
                        if(.not.associated(ptr))print*,'1005'
                        deallocate(alc)
                        if(allocated(alc))print*,'1006'
                        func1=aa
                        END FUNCTION func1
        
        type(integer(8))FUNCTION func2(aa)
                        type(integer(8)) :: aa
                        func2=aa
                        END FUNCTION func2

 type(integer(kind=8))  FUNCTION func3(aa)
                        type(integer(kind=8)) :: aa
                        func3=aa
                        END FUNCTION func3

 type(integer(kind=(12-4))) FUNCTION func4(aa)
                            type(integer(kind=(12-4))) :: aa
                            func4=aa
                            END FUNCTION func4

 type(integer(12-4))    FUNCTION func5(aa)
                        type(integer(12-4)) :: aa
                        func5=aa
                        END FUNCTION func5

 type(integer(2*4))     FUNCTION func6(aa)
                        type(integer(2*4)) :: aa
                        func6=aa
                        END FUNCTION func6

 type(integer(((16)-(2*4))))    FUNCTION func7(aa)
                                type(integer(((16)-(2*4)))) :: aa
                                func7=aa
                                END FUNCTION func7

 type(integer*8)        FUNCTION func8(aa)
                        type(integer*8) :: aa
                        func8=aa
                        END FUNCTION func8

 type(integer(kind=val))FUNCTION func9(aa)
                        type(integer(kind=val)) :: aa
                        func9=aa
                        END FUNCTION func9

 type(integer(kind=a-b))FUNCTION func10(aa)
                        type(integer(kind=a-b)) :: aa
                        func10=aa
                        END FUNCTION func10

 type(integer(kind=a-8))FUNCTION func11(aa)
                        type(integer(kind=a-8)) :: aa
                        func11=aa
                        END FUNCTION func11

 type(integer(kind=16-b))FUNCTION func12(aa)
                         type(integer(kind=16-b)) :: aa
                         func12=aa
                         END FUNCTION func12

END PROGRAM main

