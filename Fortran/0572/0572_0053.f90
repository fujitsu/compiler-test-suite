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

  recursive subroutine sub3(aa,bb,r)        
   implicit none       
 type(*),optional::aa(:)     
 type(*),optional::bb     
        integer::r
if( r /= 0)then
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,ubound(aa,1)
  if(size(aa,1) /= 5)print*,size(aa,1) 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .false.)print*,'406' 
  if(rank(aa)/= 1)print*,'408' 
  call sub3(aa,bb,0) 
        else
   print*,"pass"
   end if
  end subroutine sub3



        
   
end module m

use m

integer::dd


call sub3(i_inta(1:10:2),dd,1)        
call sub3(cha(1:10:2),dd,1)        
call sub3(rra(1:10:2),dd,1)        
call sub3(coma(1:10:2),dd,1)        
call sub3(obja(1:10:2),dd,1)        
call sub3(lla(1:10:2),dd,1)    


call sub3(ii(2,:),dd,1)        
call sub3(ch(1,:),dd,1)        
call sub3(rr(3,:),dd,1)        
call sub3(com(4,:),dd,1)        
call sub3(obj2(2,:),dd,1)        
call sub3(ll(1,:),dd,1)    
        end
