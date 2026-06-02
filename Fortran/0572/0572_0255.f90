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
  if(rank(aa) /= r)print*,'406' 

   end subroutine sub3



        
   
end module m

use m


call sub3(i_int,0)
call sub3(ch,0)
call sub3(rr,0)
call sub3(com,0)
call sub3(obj,0)
call sub3(ll,0)


call sub3(i_inta,1)        
call sub3(cha,1)        
call sub3(rra,1)        
call sub3(coma,1)        
call sub3(obja,1)        
call sub3(lla,1)        

call sub3(ii,3)        
call sub3(c,3)        
call sub3(r,3)        
call sub3(co,3)        
call sub3(ob,3)        
call sub3(l,3)       
call sub3((/(4,2),(5,5),(6,6),(7,7),(8,8)/),1)        
call sub3((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/),1)        
        print*,"pass"
        end
