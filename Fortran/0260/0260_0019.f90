program main
        implicit none

        type(integer),parameter :: b=8,bb=1

        TYPE(CHARACTER(len=10,kind=1))        :: ptr_a,ret_a
        TYPE(CHARACTER(kind=1))               :: ptr_b,ret_b
        TYPE(CHARACTER(len=16-4, kind=16-15)) :: ptr_c,ret_c
        TYPE(CHARACTER(len=b, kind=bb))       :: ptr_d,ret_d  
        TYPE(CHARACTER(len=b, kind=bb))     :: ptr_e,ret_e

        ptr_a='1234567890'
        ptr_b='A'
        ptr_c='PQ1234567890'
        ptr_d='12345678'
        ptr_e='ABCDEFGH'
       
        ret_a=func1(ptr_a)
        if(kind(ptr_a) /= kind(ret_a)) print*,100

        ret_b=func2(ptr_b)
        if(kind(ptr_b) /= kind(ret_b)) print*,101

        ret_c=func3(ptr_c)
        if(kind(ptr_c) /= kind(ret_c)) print*,102

        ret_d=func4(ptr_d)
        if(kind(ptr_d) /= kind(ret_d)) print*,103

        ret_e=func5(ptr_e)
        if(kind(ptr_e) /= kind(ret_e)) print*,104

print*,"pass"

contains
type(CHARACTER(len=10,kind=1))   FUNCTION func1(aa)
                TYPE(CHARACTER(len=10,kind=1)) :: aa
                func1=aa
                END FUNCTION func1

type(CHARACTER(kind=1))   FUNCTION func2(aa)
                type(CHARACTER(kind=1)) :: aa
                func2=aa
                end function func2

type(CHARACTER(len=16-4,kind=16-15))   FUNCTION func3(aa)
                TYPE(CHARACTER(len=16-4,kind=16-15)) :: aa
                func3=aa
                END FUNCTION func3

type(CHARACTER(len=b,kind=bb))   FUNCTION func4(aa)
                INTEGER, PARAMETER :: xb=8,xbb=1
                TYPE(CHARACTER(len=xb,kind=xbb)) :: aa
                func4=aa
                END FUNCTION func4

type(CHARACTER(len=b,kind=bb))   FUNCTION func5(aa)
                INTEGER, PARAMETER :: zb=8,zbb=1
                TYPE(CHARACTER(len=zb,kind=zbb)) :: aa
                func5=aa
                END FUNCTION func5

end program main
