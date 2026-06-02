module m
implicit none 
type  ty 
 integer::ii
 character::c(4)
end type
type(ty)          ::obj
type(ty)          ::obja(10),ob(3,5,7)




contains

   subroutine sub3(aa,r)        
   implicit none       
 type(*),optional::aa(..)
        integer::r
  if(present(aa).neqv. .true.) print*,'402'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa) /= r)print*,'407',rank(aa) 
        print*,"pass"

   end subroutine sub3



        
   
end module m

use m


call sub1(obj)

call sub2(obja)        

call sub4(ob)        
call sub2((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/))        

contains
subroutine sub1(dmy)
        class(ty)::dmy
           call sub3(dmy,0)
end subroutine    
subroutine sub2(dmy)
        class(ty)::dmy(:)
           call sub3(dmy,1)
end subroutine    
subroutine sub4(dmy)
        class(ty)::dmy(:,:,:)
           call sub3(dmy,3)
end subroutine    
        end 
