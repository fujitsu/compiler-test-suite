MODULE m1
TYPE ty
INTEGER::ii
INTEGER::jj
END TYPE
INTERFACE OPERATOR(+)
PROCEDURE fun
END INTERFACE OPERATOR(+)
CONTAINS
FUNCTION fun(dmy1,dmy2)
TYPE(ty)::fun
TYPE(ty),POINTER,INTENT(IN)::dmy1
INTEGER,pointer,INTENT(IN)::dmy2
integer,save::counter=0
if (.not.associated(dmy1))print*,101
if (.not.associated(dmy2))print*,102
counter=counter+1;
fun%ii=dmy1%ii+dmy2+counter
fun%jj=dmy1%jj+dmy2+counter
dmy2=12
dmy1%ii =21
END FUNCTION
END MODULE
PROGRAM MAIN
USE m1
TYPE(ty),TARGET::obj
TYPE(ty),POINTER::ptr
TYPE(ty)::t1,t2
INTEGER,TARGET::ii(2)=5
ptr=>obj
ptr%ii=10
ptr%jj=10
t1 = ptr  + ii(2)   
t2 = fun(ptr,ii(2))  
if (t1%ii /= 16 .or. t1%jj /=16)print*,103
if (t2%ii /= 35 .or. t2%jj /=24)print*,104
if (ii(1) /=5 .or. ii(2)/=12)print*,105
if (ptr%ii /=21 .or. ptr%jj /=10)print*,106
print*,"Pass"
END PROGRAM

