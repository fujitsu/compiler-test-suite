TYPE SCREW
   CHARACTER (30), POINTER :: HEAD_TYPE
   REAL LENGTH, THREAD
END TYPE SCREW

TYPE (SCREW) INVENTORY (500)
REAL THREADS (100)
CHARACTER (30), TARGET :: HEAD_TYPES(5)

inventory = screw(null(),0.0,0.0)
head_types = (/"a","b","c","d","e"/)
threads = (/(i,i=1,size(threads))/)
inventory(::100)%length = 1.1
FORALL (I=1:500, INVENTORY(I)%LENGTH > .05)
   INVENTORY(I)%HEAD_TYPE => HEAD_TYPES(MOD(I-1,5)+1)
   INVENTORY(I)%THREAD = THREADS((I-1)/5+1)
END FORALL
write(1,*)inventory(101)%length
write(1,*) inventory(101)%head_type
write(1,*) associated(inventory(102)%head_type)
write(1,*) inventory(101)%thread
write(1,*) inventory(102)%thread
 rewind 1
call sub 
end
subroutine sub
character *30 aa
logical aaa
read(1,*) a;if(abs(a-1.1)>0.00001)write(6,*) "NG"
read(1,'(a)') aa;if(aa/=' a')write(6,*) "NG"
read(1,*) aaa;if(aaa)write(6,*) "NG"
read(1,*) a;if(abs(a-21.0)>0.001)write(6,*) "NG"
read(1,*) a;if(abs(a-0)>0.01)write(6,*) "NG"
print *,'pass'
end
