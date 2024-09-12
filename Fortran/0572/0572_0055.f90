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

function f1(aa)       
   implicit none       
 type(*),optional::aa(*)  
       integer::f1
       f1= rank(aa)
  if(present(aa).neqv. .true.) print*,'302'
  if(lbound(aa,1) /=1 ) print*,'303'
  if(is_contiguous(aa).neqv. .true.)print*,'306' 
   end function

  function f2(aa)        
   implicit none       
 type(*),optional::aa(:)    
        integer::f2
       f2= rank(aa)
  if(present(aa).neqv. .true.) print*,'402'
  if(lbound(aa,1) /=1 ) print*,'403'
  if(ubound(aa,1) /=5 ) print*,ubound(aa,1)
  if(size(aa,1) /= 5)print*,size(aa,1) 
  if(size(shape(aa))/=1 ) print*,'407'
  if(is_contiguous(aa).neqv. .false.)print*,'406' 
   end function



        
   
end module m

use m
type t 
    integer::aa
end type

type(t)::ob2
 integer::d(5)=(/1,3,5,7,9/)
integer::s,arr(2)
 ob2=t(f1(coma(1:10:2))+f2(coma(1:10:2))) 
  if(ob2%aa /= 2)print*,201
 arr=(/f1(lla(1:10:2))+f2(lla(1:10:2)),f1(obja(1:10:2))+f2(obja(1:10:2))/) 

if(arr(1)/=2)print*,301
if(arr(2)/=2)print*,302



s=f1(i_inta(1:10:2))+f2(i_inta(1:10:2))     
 if(s /=2)print*,101       
s= f1(cha(1:10:2))+f2(cha(1:10:2))        
 if(s /=2)print*,102       
 s=f1(rra(1:10:2))+f2(rra(1:10:2))        
 if(s /=2)print*,103       
s=f1(coma(1:10:2))+f2(coma(1:10:2))        
 if(s /=2)print*,104       
s= f1(obja(1:10:2))+f2(obja(1:10:2))        
 if(s /=2)print*,105       
s= f1(lla(1:10:2))+f2(lla(1:10:2))    
 if(s /=2)print*,106       


s=f1(i_inta(d))+f2(ii(2,:))     
 if(s /=2)print*,101       
s=f1(cha(1:10:2))+f2(ch(1,:))     
 if(s /=2)print*,101       
s=f1(rra(1:10:2))+f2(rr(3,:))     
 if(s /=2)print*,101       
s=f1(coma(1:10:2))+f2(com(4,:))     
 if(s /=2)print*,101       
s=f1(obja(1:10:2))+f2(obj2(2,:))     
 if(s /=2)print*,101       
s=f1(lla(1:10:2))+f2(ll(1,:))     
 if(s /=2)print*,101       
 
print*,"pass"
        end
