TYPE SCREW
   CHARACTER (30), POINTER :: HEAD_TYPE
   REAL LENGTH, THREAD
END TYPE SCREW

TYPE (SCREW) INVENTORY (500,2,3)
REAL THREADS (100)
CHARACTER (30), TARGET :: HEAD_TYPES(5)

inventory = screw(null(),0.0,0.0)
head_types = (/"a","b","c","d","e"/)
threads = (/(i,i=1,size(threads))/)
inventory(::100,:,:)%length = 1.1
FORALL (J=1:2)
FORALL (I=1:500,K=1:3, INVENTORY(I,J,K)%LENGTH > .05)
   INVENTORY(I,J,K)%HEAD_TYPE => HEAD_TYPES(MOD(I-1,5)+1)
   INVENTORY(I,J,K)%THREAD = THREADS((I-1)/5+1)
END FORALL
END FORALL
do k=1,3
do j=1,2
write(4,*)inventory(101,j,k)%length
write(4,*) inventory(101,j,k)%head_type
write(4,*) associated(inventory(102,j,k)%head_type)
write(4,*) inventory(101,j,k)%thread
write(4,*) inventory(102,j,k)%thread
end do
end do
 rewind 4
call sub
end
subroutine sub
character *30 aa
logical aaa
do k=1,3
do j=1,2
read(4,*) a;if(abs(a-1.1)>0.00001)write(6,*) "NG"
read(4,'(a)') aa;if(aa/=' a')write(6,*) "NG"
read(4,*) aaa;if(aaa)write(6,*) "NG"
read(4,*) a;if(abs(a-21.0)>0.001)write(6,*) "NG"
read(4,*) a;if(abs(a-0)>0.01)write(6,*) "NG"
end do
end do
print *,'pass'
end
