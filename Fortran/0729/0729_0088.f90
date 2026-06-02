TYPE SCREW
   CHARACTER (30), POINTER :: HEAD_TYPE
   REAL LENGTH, THREAD
END TYPE SCREW

TYPE (SCREW) INVENTORY (500,2)
REAL THREADS (100)
CHARACTER (30), TARGET :: HEAD_TYPES(5)

inventory = screw(null(),0.0,0.0)
head_types = (/"a","b","c","d","e"/)
threads = (/(i,i=1,size(threads))/)
inventory(::100,:)%length = 1.1
FORALL (J=1:2)
FORALL (I=1:500, INVENTORY(I,J)%LENGTH > .05)
   INVENTORY(I,J)%HEAD_TYPE => HEAD_TYPES(MOD(I-1,5)+1)
   INVENTORY(I,J)%THREAD = THREADS((I-1)/5+1)
END FORALL
END FORALL
do j=1,2
write(3,*)inventory(101,j)%length
write(3,*) inventory(101,j)%head_type
write(3,*) associated(inventory(102,j)%head_type)
write(3,*) inventory(101,j)%thread
write(3,*) inventory(102,j)%thread
end do
 rewind 3
call sub
end
subroutine sub
character *30 aa
logical aaa
do j=1,2
read(3,*) a;if(abs(a-1.1)>0.00001)write(6,*) "NG"
read(3,'(a)') aa;if(aa/=' a')write(6,*) "NG"
read(3,*) aaa;if(aaa)write(6,*) "NG"
read(3,*) a;if(abs(a-21.0)>0.001)write(6,*) "NG"
read(3,*) a;if(abs(a-0)>0.01)write(6,*) "NG"
end do
print *,'pass'
end
