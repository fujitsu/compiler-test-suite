interface
        
   subroutine s1()
   end
        
   subroutine s2()
   end
        
end interface
integer,target::t1=30
integer,target::t2(5,5)=30
 type z
    procedure(s1),pointer,nopass :: prc=>NULL()
    integer,pointer::ptr1=>t1
    integer,pointer::ptr2(:,:)=>t2
 end type

 type xx
     type(z) :: cmp(2)
   end type
  type (xx) ::b(2,2)
if(associated(b(2,2)%cmp(1)%ptr1).neqv..true.)print*,"101"
if(associated(b(2,2)%cmp(1)%ptr2).neqv..true.)print*,"102"
if(b(2,2)%cmp(1)%ptr1.ne.30)print*,"104"
print*,"PASS"
end

