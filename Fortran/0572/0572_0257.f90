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

   end subroutine sub3



        
   
end module m

use m


call sub1(i_int)
call sub1(ch)
call sub1(rr)
call sub1(com)
call sub1(obj)
call sub1(ll)

call sub2(cha)        
call sub2(rra)        
call sub2(coma)        
call sub2(obja)        
call sub2(lla)        

call sub4(ii)        
call sub4(c)        
call sub4(r)        
call sub4(co)        
call sub4(ob)        
call sub4(l)       
call sub2((/(4,2),(5,5),(6,6),(7,7),(8,8)/))        
call sub2((/ty(2,'a'),ty(3,'b'),ty(4,'c'),ty(5,'d'),ty(6,'e')/))        

        print*,"pass"
contains
subroutine sub1(dmy)
        class(*)::dmy
           call sub3(dmy,0)
end subroutine    
subroutine sub2(dmy)
        class(*)::dmy(:)
           call sub3(dmy,1)
end subroutine    
subroutine sub4(dmy)
        class(*)::dmy(:,:,:)
           call sub3(dmy,3)
end subroutine    
        end 
