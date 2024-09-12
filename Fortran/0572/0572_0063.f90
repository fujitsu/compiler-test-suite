module m
implicit none 
type  ty 
 character::c
end type
integer           :: i_int =4
integer           :: i_inta(10)=44
character         :: ch  ='a'
character         :: cha(10)="aa"
real              :: rr= 44.4
real              :: rra(10)=444.4
complex           :: com=(5.6,6.6)
complex           :: coma(10)=(55.6,66.6)
logical           :: ll =.true.
logical           :: lla(10)=.true.
type(ty)          ::obj
type(ty)          ::obja(10)




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
   end subroutine sub2

   subroutine sub3(aa)        
   implicit none       
 type(*),optional::aa(:)     
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=10 ) print*,'404'
  if(size(aa,1) /= 10) print*,'405' 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
   end subroutine sub3



        
   
end module m

use m


call sub1(i_int)
call sub1(ch)
call sub1(rr)
call sub1(com)
call sub1(obj)
call sub1(ll)

call sub2(i_inta)        
call sub2(cha)        
call sub2(rra)        
call sub2(coma)        
call sub2(obja)        
call sub2(lla)    

call sub3(i_inta)        
call sub3(cha)        
call sub3(rra)        
call sub3(coma)        
call sub3(obja)        
call sub3(lla)        
print*,"pass"
        end
