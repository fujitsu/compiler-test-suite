INTEGER::JJ(5),A,B
COMMON /ICOM/ A,B
integer,pointer::ptr
integer,target::t1=20
DATA (JJ(ICOM),ICOM=1,5),ptr /5*10,t1/
IF(ANY(JJ /= 10))PRINT*,101
if(associated(ptr).neqv..true.)print*,"101"
if(ptr.ne.20)print*,"102"
PRINT*,"PASS"
END
