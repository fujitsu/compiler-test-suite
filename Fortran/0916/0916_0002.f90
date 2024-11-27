module m
 integer,target::tarmain =20
 integer,pointer::ptrmain=>tarmain
 integer,pointer::ptrmain2
 integer::x
end module
subroutine sub()
use m
         integer,target::trg =30
         integer,pointer :: ptr2
         integer,pointer :: ptr4
         integer,pointer :: ptr5
         data ptr2 /tarmain/
         data ptr4 /trg/
         data ptr5 /NULL()/
if(associated(ptr4).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr5).neqv..true.)print*,"102"
print*,"PASS"
end
 integer,target::tarm =20
call sub()
call sub2()
contains
subroutine sub2()
use m
         integer,target::trg =30
         integer,pointer :: ptr2
         integer,pointer :: ptr4
         integer,pointer :: ptr5
         integer,pointer :: ptr6=>tarm
         data ptr2 /tarmain/
         data ptr4 /trg/
         data ptr5 /NULL()/
if(associated(ptr4).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(associated(ptr5).neqv..true.)print*,"102"
if(associated(ptr6).neqv..true.)print*,"102"
print*,"PASS"
end
end

