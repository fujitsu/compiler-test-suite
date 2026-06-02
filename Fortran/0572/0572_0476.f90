module m
implicit none 
type  ty 
 integer::ii
 character::c(4)
end type
integer           :: i_int =4
integer           :: i_inta(10)=44,ii(3,3,3)
character         :: ch  ='a'
character         :: cha(10)="aa",c(4,2,3)
real              :: rr= 44.4
real              :: rra(10)=444.4,r(3,4,5)
complex           :: com=(5.6,6.6)
complex           :: coma(10)=(55.6,66.6),co(3,3,3)
logical           :: ll =.true.
logical           :: lla(10)=.true.,l(2,3,5)
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


call sub1(i_int,0)
call sub1(ch,0)
call sub1(rr,0)
call sub1(com,0)
call sub1(obj,0)
call sub1(ll,0)

call sub1(cha,1)        
call sub1(rra,1)        
call sub1(coma,1)        
call sub1(obja,1)        
call sub1(lla,1)        

call sub1(ii,3)        
call sub1(c,3)        
call sub1(r,3)        
call sub1(co,3)        
call sub1(ob,3)        
call sub1(l,3)       
call sub1((/(4,2),(5,5),(6,6),(7,7),(8,8)/),1)        
call sub1((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/),1)        

contains
subroutine sub1(dmy,r)
        class(*)::dmy(..)
        integer::r
           call sub3(dmy,r)
end subroutine    
        end 
