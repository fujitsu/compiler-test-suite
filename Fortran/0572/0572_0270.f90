module m
implicit none 
type  ty 
 character::c
end type
integer           :: i_inta(10)=44,ii(4,5)
character         :: cha(10)="aa",ch(4,5)
real              :: rra(10)=444.4,rr(4,5)
complex           :: coma(10)=(55.6,66.6),com(4,5)
logical           :: lla(10)=.true., ll(4,5)
type(ty)          ::obj
type(ty)          ::obja(10),obj2(4,5)




contains
   subroutine sub1(aa)       
   implicit none       
 type(*),optional::aa     
  if(present(aa).neqv. .true.) print*,'202'
  if(size(shape(aa))/=0 ) print*,'207'
   end subroutine sub1

   subroutine sub2(aa)       
   implicit none       
 type(*),optional::aa(*)     
  if(present(aa).neqv. .true.) print*,'302'
  if(lbound(aa,1) /=1 ) print*,'303'
  if(is_contiguous(aa).neqv. .true.)print*,'306' 
  if(rank(aa)/= 1)print*,'306' 
   end subroutine sub2

   subroutine sub3(aa)        
   implicit none       
 type(*),target,optional::aa(:)     
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,ubound(aa,1)
  if(size(aa,1) /= 5)print*,size(aa,1) 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .false.)print*,'406' 
  if(rank(aa)/= 1)print*,'408' 
   end subroutine sub3
   subroutine sub5(aa)        
   implicit none       
 type(*),optional,target::aa(..)     
  if(present(aa).neqv. .true.) print*,'502'
  if(lbound(aa,1) /=1 ) print*,'503'
  if(ubound(aa,1) /=5 ) print*,ubound(aa,1)
  if(size(aa,1) /= 5)print*,size(aa,1) 
  if(size(shape(aa))/=1 ) print*,'507'
  if(is_contiguous(aa).neqv. .false.)print*,'506' 
  if(rank(aa)/= 1)print*,'508' 
   end subroutine sub5






subroutine sub4(dmy)
class(*),target::dmy(:)
call sub2(dmy)
call sub3(dmy)
call sub5(dmy)
end subroutine
        
   
end module m

use m



call sub4(i_inta(1:10:2))        
call sub4(cha(1:10:2))        
call sub4(rra(1:10:2))        
call sub4(coma(1:10:2))        
call sub4(obja(1:10:2))        
call sub4(lla(1:10:2))    
call sub4(ii(2,:))        
call sub4(ch(1,:))        
call sub4(rr(3,:))        
call sub4(com(4,:))        
call sub4(obj2(2,:))        
call sub4(ll(1,:))    
print*,"pass"
        end
