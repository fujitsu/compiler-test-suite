module m
implicit none 
type  ty 
 integer::ii
 character::c(4)
end type
integer           :: i_inta(10)=44
character         :: cha(10)="aa"
complex           :: coma(10)=(55.6,66.6)
type(ty)          ::obja(10)




contains

   subroutine sub3(aa,bb,cc,dd)        
   implicit none       
 type(*),optional::aa(..),bb(..),cc(..),dd(..)
  if(present(aa).neqv. .true.) print*,'402'
   if(lbound(aa,1) /=1 ) print*,'403'
   if(lbound(bb,1) /=1 ) print*,'303'
   if(lbound(cc,1) /=1 ) print*,'203'
   if(lbound(dd,1) /=1 ) print*,'103'
   if(ubound(aa,1) /=10 ) print*,'404'
   if(size(aa,1) /= 10) print*,'405' 
   if(size(bb,1) /= 10) print*,'305' 
   if(size(cc,1) /= 10) print*,'305' 
   if(size(dd,1) /= 10) print*,'305' 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(is_contiguous(bb).neqv. .true.)print*,'407' 
  if(is_contiguous(cc).neqv. .true.)print*,'408' 
  if(is_contiguous(dd).neqv. .true.)print*,'409' 
        print*,"pass"

   end subroutine sub3



        
   
end module m

use m



call sub1(i_inta,cha,coma,obja)        


contains
subroutine sub1(dmy1,dmy2,dmy3,dmy4)
        class(*)::dmy1(..)
        type(*)::dmy2(..)
        class(*)::dmy3(..)
        type(*)::dmy4(..)
           call sub3(dmy1,dmy2,dmy3,dmy4)
end subroutine    
        end 
