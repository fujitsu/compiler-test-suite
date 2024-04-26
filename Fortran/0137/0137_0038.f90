module m1
integer,parameter::c(5)=[1,2,3,4,5]
integer,parameter::d(5)=c
contains
subroutine t01(x,y,n,k)
integer,optional::x(k),y(k)
intent(in)::y
select case(n)
case (1,4)
 if( .not.present(x)) print *,101
 if (any(x/=c)) print *,102
 if( .not.present(y)) print *,101
 if (any(y/=c)) print *,102
case (2)
 if( .not.present(x)) print *,301
 if (any(x/=c(:3:2))) print *,302
 if( .not.present(y)) print *,301
 if (any(y/=c(:3:2))) print *,302
case (3)
 if( .not.present(x)) print *,401
 if (any(x/=c(:3))) print *,402
 if( .not.present(y)) print *,401
 if (any(y/=c(:3))) print *,402
case (5)
 if(present(x)) print *,501
 if(present(y)) print *,501
end select
end subroutine
function   t11(x,y,n,k)
integer,optional::x(k),y(k)
intent(in)::y
t11=0
select case(n)
case (1,4)
 if( .not.present(x)) print *,11101
 if (any(x/=c)) print *,11102
 if( .not.present(y)) print *,11101
 if (any(y/=c)) print *,11102
case (2)
 if( .not.present(x)) print *,11301
 if (any(x/=c(:3:2))) print *,11302
 if( .not.present(y)) print *,11301
 if (any(y/=c(:3:2))) print *,11302
case (3)
 if( .not.present(x)) print *,11401
 if (any(x/=c(:3))) print *,11402
 if( .not.present(y)) print *,11401
 if (any(y/=c(:3))) print *,11402
case (5)
 if(present(x)) print *,11501
 if(present(y)) print *,11501
end select
end function
subroutine s1(pp,aa,c,d)
integer,pointer::p(:),pp(:)
integer,allocatable::a(:),aa(:)
integer c(5),d(5)
intent(in)::d
p=>null()
call t01(c,c,1,5)
call t01(d(1:3:2),c(:3:2),2,2)
call t01(c(1:3),c(1:3),3,3)
call t01(c(:),c(:),4,5)
call t01(     n=5,k=0)
call t01(p,p,   n=5,k=0)
call t01(a,a,   n=5,k=0)
call t01(pp,pp,   n=5,k=0)
call t01(aa,aa,   n=5,k=0)

call =t11(c,c,1,5)
call =t11(d(1:3:2),c(:3:2),2,2)
call =t11(c(1:3),c(1:3),3,3)
call =t11(c(:),c(:),4,5)
call =t11(     n=5,k=0)
call =t11(p,p,   n=5,k=0)
call =t11(a,a,   n=5,k=0)
call =t11(pp,pp,   n=5,k=0)
call =t11(aa,aa,   n=5,k=0)
if (call/=0) print *,101
end subroutine
end
use m1
integer,pointer::pp(:)
integer,allocatable::aa(:)
pp=>null()
call s1(pp,aa,c,d)
print *,'pass'
end
