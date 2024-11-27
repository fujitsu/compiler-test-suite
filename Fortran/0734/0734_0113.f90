module mod
 integer ,pointer::i(:,:)
 contains
 subroutine sub(j)
 integer::j(:,:)
 k=1 
 end subroutine
end
use mod
allocate(i(5,5))
i=reshape((/(ii,ii=1,25)/),(/5,5/))
call sub(i(1:5:2,1:5:2))
print *,'pass'
end 
