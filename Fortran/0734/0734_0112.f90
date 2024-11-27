module mod
 integer ::i(5,5)=reshape((/(ii,ii=1,25)/),(/5,5/))
 contains
 subroutine sub(j)
 integer::j(:,:)
 k=1 
 end subroutine
end
use mod
call sub(i(1:5:2,1:5:2))
print *,'pass'
end 
