module m1
complex,target::comptrg(3)=[(11.11,22.22),(33.33,55.55),(66.66,77.77)]
real,target::rtrg(3)= 555.55
integer,target::itrg=999
character(len=5),target::ctrg(2,3)=reshape(["12345","abcde","22222","99999","88888","m1m2m"],shape(ctrg))
integer,parameter::constii=888

type ty
integer,pointer::p1 !=>itrg
integer,pointer::ptr
procedure(real) ,nopass,pointer ::p5!=>ifun
procedure(real) ,nopass,pointer ::p6
end type

type,extends(ty)::ty1
integer::ii
character(:),pointer::cptr(:,:)
procedure(real) ,nopass,pointer ::p7!=>ifun
end type


type,extends(ty1)::ty2
real,pointer::rr(:)!=>NUll()
logical::ll!=.true.
end type

type,extends(ty2)::ty3
double precision::dd
complex,pointer::compptr!=>comptrg(1)
procedure(ifun) ,nopass,pointer ::p8!=>ifun
end type
contains
 function ifun()
        real::ifun
        ifun=1
        return
 end function
end module

module m2
use m1
type(ty1)::obj1
type(ty3)::obj3(3)
type(ty2)::obj2(5) 
type(ty3)::obj4(4) 

data obj1 /ty1(ty(ptr=itrg,p6= ifun,p1=itrg,p5=ifun),10,ctrg(1:2,2:3)(2:4),p7=ifun)/

data obj2(2) /&
                       &ty2(ty1(ty(ptr=itrg,p6= ifun,p1=itrg,p5=ifun),10,ctrg(1:2,2:3)(2:4),ifun),rr=null(),ll=.true.)/

data (obj3(i),i=1,3) / &
                   &3*ty3(ptr=NULL(),p6=&
ifun,p1=itrg,p5=ifun,ii=constii,cptr=ctrg,rr=rtrg(1:3:2),ll=.true.,dd=12.11,compptr=comptrg(3), p8 = ifun,p7=ifun)/

data obj4(1) / ty3(ty2(ty1(ty(ptr=itrg,p6= ifun,p1=itrg,p5=ifun),10,ctrg(1:2,2:3)(2:4),ifun),rr=null(),ll=.true.),dd=9999.99,compptr=comptrg(1),p8 = NULL())/

data obj4(3) /ty3(p1=itrg,p5=ifun,ptr=NULL(),p6= &
ifun,ii=constii+20,cptr=ctrg,rr=rtrg(1:3:2),ll=.true.,p7=ifun,dd=12.11,compptr=comptrg(3),p8 = NULL())/

data obj4(2) / ty3(ty2(ty1(ty(ptr=itrg,p6= ifun,p1=itrg,p5=ifun),10,ctrg(1:2,2:3)(2:4),p7=ifun),rr=null(),ll=.true.),dd=9999.99,compptr=comptrg(1),p8 = NULL())/ 
data obj4(4) / ty3(ty2(ty1(ty(ptr=itrg,p6= ifun,p1=itrg,p5=ifun),10,ctrg(1:2,2:3)(2:4),p7=ifun),rr=null(),ll=.true.),dd=9999.99,compptr=comptrg(1),p8 = NULL())/ 
end module

use m2
if (obj1%ptr /= 999) print *,101
if (obj1%ii /= 10) print *,102
if (size(obj1%cptr) /= 4) print *,103
if (any(obj1%cptr /= reshape(["222","999","888","1m2"],[2,2])))print *,104
if (len(obj1%cptr) /=3) print *,105

if (associated(obj2(1)%cptr)  .neqv. .false.) print*,106
if (associated(obj2(4)%cptr)  .neqv. .false.) print*,107
if (obj2(2)%ptr /= 999) print *,108
if (obj2(2)%ii /= 10) print *,109
if (size(obj2(2)%cptr) /= 4) print *,110
if (any(obj2(2)%cptr /= reshape(["222","999","888","1m2"],[2,2])))print *,111
if (len(obj2(2)%cptr) /=3) print *,112
if (associated(obj2(2)%rr) .neqv. .false.) print *,113
if (obj2(2)%ll .neqv. .true.) print *,114

if (associated(obj3(1)%ptr) .neqv. .false. ) print *,115
if (obj3(2)%ii /= constii) print *,116
if (size(obj3(3)%cptr) /= 6) print *,117
if (any(obj3(1)%cptr /= reshape(["12345","abcde","22222","99999","88888","m1m2m"],shape(ctrg))))print *,118
if (len(obj3(2)%cptr) /= 5) print *,119
if (associated(obj3(3)%rr) .neqv. .true.) print *,120
if (size(obj3(1)%rr) /= 2) print *,121
if (any(obj3(2)%rr /= [555.55,555.55]))print *,122
if (obj3(1)%ll .neqv. .true.) print *,123
if (obj3(2)%dd /= 12.11) print *,124
if (obj3(2)%compptr /= comptrg(3))print *,125


if (associated(obj4(1)%ptr) .neqv. .true. ) print *,401
if (obj4(3)%ii /= 908) print *,402
if (size(obj4(3)%cptr) /= 6) print *,403
if (any(obj4(1)%cptr /= reshape(["222","999","888","1m2"],[2,2])))print *,404
if (len(obj4(3)%cptr) /= 5) print *,405
if (obj4(1)%ll .neqv. .true.) print *,409
if (obj4(3)%dd /= 12.11) print *,410
if (obj4(1)%compptr /= comptrg(1))print *,411

if (.not.associated(obj4(2)%ptr)  ) print *,115
if (associated(obj4(2)%rr) ) print *,120
if (obj4(2)%ll .neqv. .true.) print *,123
if (obj4(2)%dd /= 9999.99) print *,124
if (obj4(2)%compptr /= comptrg(1))print *,125

if (associated(obj4(4)%ptr) .neqv. .true. ) print *,115
if (obj4(4)%ii /= 10) print *,116
if (size(obj4(4)%cptr) /= 4) print *,117
if (len(obj4(4)%cptr) /= 3) print *,119
if (associated(obj4(4)%rr)) print *,120
if (any(obj4(4)%rr /= [555.55,555.55,555.55]))print *,122,obj4(4)%rr
if (obj4(4)%ll .neqv. .true.) print *,123
if (obj4(4)%dd /= 9999.99) print *,124, obj4(4)%dd
if (associated(obj1%p5)  .neqv. .true.) print*,906
if (associated(obj2(2)%p5)  .neqv. .true.) print*,907
if (associated(obj2(2)%p6)  .neqv. .true.) print*,917
if (associated(obj3(2)%p5)  .neqv. .true.) print*,927
if (associated(obj3(2)%p6)  .neqv. .true.) print*,937
if (associated(obj3(2)%p8)  .neqv. .true.) print*,947
if(obj3(2)%p8().ne.1)print*,910
if(obj3(2)%p6().ne.1)print*,911
if (associated(obj2(1)%p5))print*,913

print *,"Pass"
end
