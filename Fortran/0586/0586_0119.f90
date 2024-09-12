integer,pointer::ptr
integer,pointer::ptr2
integer,target::t1 =20
CHARACTER(LEN=5)::CH(5),CH2
DATA (CH(1)(1:3),KK=1,1),ptr,(CH2(1:3),KK=1,1),ptr2  /"ABC",t1,"BAD",t1/
IF(CH(1)(1:3) .NE. "ABC")PRINT*,101,CH(1)
IF(CH2(1:3).NE. "BAD")PRINT*,102,CH2
if(associated(ptr).neqv..true.)print*,"101"
if(associated(ptr2).neqv..true.)print*,"102"
if(ptr.ne.20)print*,"103"
if(ptr2.ne.20)print*,"104"
PRINT*,"PASS"
END
