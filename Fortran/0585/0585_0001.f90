integer,pointer::arr,a(:),x
integer, target::trg=10
allocate(a(5),x)
a(1)=5
x=fun([10,10,10,10,10],a(2))
if(x.ne.20)print*,"101"
print*,"PASS"
contains
       function fun(dum,darra)
        integer, pointer::fun
        integer,pointer::ptr2
        integer,target::darra
        integer,target::dum(5)
        integer,target::darr2=20
         data ptr2 /darr2/
        fun=>ptr2
        if(ptr2.ne.20)print*,"102"
       end function
       subroutine sub()
        integer,pointer::ptr2
        integer,target::darr2=20
         data ptr2 /darr2/
        if(ptr2.ne.20)print*,"103"
       end subroutine
end

