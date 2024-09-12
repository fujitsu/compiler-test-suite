module m
interface gen
module procedure sub1
module procedure sub2
module procedure sub3
end interface

contains
subroutine sub1(aa)        
   implicit none       
 type(*)::aa     
  if(size(shape(aa))/=0 ) print*,'207'
  if(rank(aa)/=0)print*,'208'
       end subroutine sub1

subroutine sub2(aa)        
   implicit none       
 type(*)::aa(:)     
  if(lbound(aa,1) /=1 ) print*,'603'
  if(ubound(aa,1) /=5 ) print*,'604'
  if(size(aa,1) /= 5) print*,'605' 
  if(size(shape(aa))/= 1) print*,'607'
  if(is_contiguous(aa).neqv. .true.)print*,'606' 
  if(rank(aa)/= 1)print*,'608' 
   end subroutine sub2

subroutine sub3(aa)        
   implicit none       
 type(*)::aa(:,:)     
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,'404'
  if(size(aa,1) /= 5) print*,'405' 
  if(size(shape(aa))/= 2) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa)/= 2)print*,'408' 
   end subroutine sub3
        
end module m

use m



integer,pointer::arr(:,:),arr2(:),arr3
integer::s1,s2(5),s3(5,5)
        allocate(arr(5,5))
        allocate(arr2(5))
        allocate(arr3)

call gen(s1)        
call gen(s2)        
call gen(s3)        
call gen(arr)        
call gen(arr2)        
call gen(arr3)        
print*,"pass"
        end
