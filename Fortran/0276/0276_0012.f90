Character(len=10),target ::act1*15='ABCDE12345'
character(len=10)::val='correctval'
character(len=10),target::x*15='targetvalu'
write(x,*)val
write(fun(fun_1(fun_2(fun_3(act1)))),*)val
if(act1 .ne. x) print *,"101",act1
print*,"Pass"
contains
        function fun(dd)
        character(Len=10), pointer :: fun*15
        character(Len=10),target ::dd*15
        fun=>dd
        end function
        function fun_1(dum1)
        character(Len=10),pointer :: fun_1*15
        character(len=10),target :: dum1*15
        fun_1=>dum1
        end function
        function fun_2(dum2)
        character(Len=10),pointer :: fun_2*15
        character(len=10),target :: dum2*15
        fun_2=>dum2
        end function
        function fun_3(dum3)
        character(Len=10),pointer :: fun_3*15
        character(len=10),target :: dum3*15
        fun_3=>dum3
        end function
end
