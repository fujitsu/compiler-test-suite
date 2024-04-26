integer,target::tar1,tar2
integer :: trg1
integer :: trg2
tar1=11
tar2=13
trg1=22
trg2=30
write(1,*)trg1,trg1,trg2
rewind(1)
read(1,*)fun2(),trg1,fun1()
if(tar1 .ne. 30)print*,"101"
if(tar2 .ne. 22)print*,"102"
print *,"Pass"
contains
        function fun1()
        integer,pointer::fun1
        fun1=>tar1
        end function
        function fun2()
        integer,pointer::fun2
        fun2=>tar2
        end function
end
