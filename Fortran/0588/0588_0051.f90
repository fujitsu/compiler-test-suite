type ty
integer,pointer::ptr(:)
character(len=5),pointer::cptr(:,:)
integer::ii
real(kind=4)::rr
real(kind=4),pointer::rrptr(:,:,:)
logical,pointer::llptr
double precision,pointer::dptr
logical::ll
character(len=:),pointer::ccptr
 procedure(real) ,nopass,pointer ::p5
end type

type,extends(ty)::ty1
integer::ii1
logical,pointer::llptr1!!!!=>NULL()
real(kind=4)::rr1
real(kind=4),pointer::rrptr1(:,:,:)
logical::ll1
procedure(real) ,nopass,pointer ::p6
end type

type(ty)::obj
type(ty1)::obj1(5)
integer,pointer::test_ptr(:)
integer,target::itrg(5)=66
character(len=5),target::ctrg(2,2)=transpose(reshape(["111","222","333","444"],shape(ctrg)))
integer,parameter::val=1000
real(kind=4),parameter::rr=111.11
real(kind=4),target::rtrg(1,2,3)=55.11
logical,target::lltrg=.false.
double precision,target::dtrg=999.99_8
logical,parameter::ll=.true.
 external :: ifun
 external :: ised

type(ty)::obj2(5) = ty(itrg(1:4),ctrg(1:2:1,1:2:1),val,rr,rtrg(1:1,1:2,1:2),NULL(),dtrg,.false.,ctrg(1,2)(2:3),p5=ifun)

data obj,test_ptr,obj1 /ty(itrg,ctrg,val,rr,rtrg,lltrg,NULL(),ll,ctrg(2,2)(1:3),ifun),&
                          &itrg,&
                          &5*ty1(itrg(1:4),ctrg(1:2,1:2),val,rr,rtrg(1:1,1:2,1:2),NULL(),dtrg,.false.,&
                          &ctrg(1,2)(2:3),ifun,val,NULL(),rr1=111.11,rrptr1=rtrg,ll1=.false.,p6=ised)/
if (any(obj%ptr /= 66))print *,101
if (size(obj%ptr) /= 5)print *,102
if (any(obj%cptr .ne. transpose(reshape(["111","222","333","444"],shape(ctrg)))))print *,103
if (size(obj%cptr) /= 4) print *,104
if (obj%ii /= 1000) print *,105
if (len(obj%cptr) /= 5) print *,106
if (obj%rr /= 111.11) print *,106
if (any(obj%rrptr /= 55.11)) print *,107
if (size(obj%rrptr) /= 6) print *,108
if (obj%llptr .neqv. .false.) print *,109
if (associated(obj%dptr) .neqv..false.) print *,110
if (obj%ll .neqv. .true.) print *,111
if (obj%ccptr /= "444") print *,555
if (len(obj%ccptr) /= 3) print *,666

if (any(obj1(1)%ptr /= 66))print *,112
if (size(obj1(2)%ptr) /= 4)print *,113
if (any(obj1(3)%cptr .ne. transpose(reshape(["111","222","333","444"],shape(ctrg)))))print *,114
if (size(obj1(4)%cptr) /= 4) print *,115
if (len(obj1(5)%cptr) /= 5) print *,116
if (obj1(1)%ii /= 1000) print *,117
if (obj1(2)%rr /= 111.11) print *,118
if (any(obj1(3)%rrptr /= 55.11)) print *,119
if (size(obj1(4)%rrptr) /= 4) print *,120
if (associated(obj1(5)%llptr) .neqv..false.) print *,121
if (obj1(1)%dptr /= 999.99_8 ) print *,122
if (obj1(2)%ll .neqv. .false.) print *,123
if (obj1(1)%ccptr /= "22") print *,777
if (len(obj1(2)%ccptr) /= 2) print *,888
if (obj1(5)%ii1 /= val) print *,999
if (associated(obj1(3)%llptr1) .neqv. .false.) print *,1111
if (obj1(2)%rr1 /= 111.11) print *,2222
if (any(obj1(3)%rrptr1 /= 55.11)) print *,3333
if (size(obj1(4)%rrptr1) /= 6) print *,4444
if (obj1(2)%ll1 .neqv. .false.) print*,5555

if (associated(test_ptr) .neqv. .true.)print *,6666
if (size(test_ptr) /= 5) print *,7777
if (any(test_ptr /= 66)) print *,8888

if (any(obj2(1)%ptr /= 66))print *,112
if (size(obj2(2)%ptr) /= 4)print *,113
if (any(obj2(3)%cptr .ne. transpose(reshape(["111","222","333","444"],shape(ctrg)))))print *,114
if (size(obj2(4)%cptr) /= 4) print *,115
if (len(obj2(5)%cptr) /= 5) print *,116
if (obj2(1)%ii /= 1000) print *,117
if (obj2(2)%rr /= 111.11) print *,118
if (any(obj2(3)%rrptr /= 55.11)) print *,119
if (size(obj2(4)%rrptr) /= 4) print *,120
if (associated(obj2(5)%llptr) .neqv..false.) print *,121
if (obj2(1)%dptr /= 999.99_8 ) print *,122
if (obj2(2)%ll .neqv. .false.) print *,123
if (obj2(1)%ccptr /= "22") print *,777
if (len(obj2(2)%ccptr) /= 2) print *,888
if(associated(obj2(1)%p5).neqv..true.)print*,"901"
if(associated(obj1(1)%p5).neqv..true.)print*,"903"
if(associated(obj1(2)%p6).neqv..true.)print*,"904"
if(obj2(1)%p5().ne.1)print*,"211"
if(obj1(1)%p5().ne.1)print*,"212"
if(obj1(2)%p6().ne.1)print*,"213"
if(associated(obj%p5).neqv..true.)print*,"901"
if(obj%p5().ne.1)print*,"214"

print *,"Pass"
end
 function ifun()
        entry ised()
        real::ifun
        real::ised
        ifun=1
        return
      end function

