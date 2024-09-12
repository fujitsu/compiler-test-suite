character(len=10),target ::act1='ABCDE12345'
fun(fun_1(fun_2(fun_3(act1))))='modified'
if(act1 /= 'modified') print *,102
print *,"Pass"
contains
        function fun(dd)
        character(Len=10), pointer :: fun
        character(Len=10),target ::dd
        fun=>dd
        end function
        function fun_1(dum1)
        character(Len=10),pointer :: fun_1
        character(len=10),target :: dum1
        fun_1=>dum1
        end function
        function fun_2(dum2)
        character(Len=10),pointer :: fun_2
        character(len=10),target :: dum2
        fun_2=>dum2
        end function
        function fun_3(dum3)
        character(Len=10),pointer :: fun_3
        character(len=10),target :: dum3
        fun_3=>dum3
        end function
end
