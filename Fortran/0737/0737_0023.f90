module m1
contains
function m0_achk(p) result(a)
 character(kind=1),allocatable,dimension(:,:):: a
 character(kind=1,len=*),allocatable,optional,dimension(:,:)::p
 entry   m1_achk(p) result(a)
 if (.not.present(p))write(6,*) "NG"
 allocate (a(-2:-1,0:1))
a=p
 if (len(p)/=1)write(6,*) "NG"
end function
end 
use m1
 character(kind=1,len=1),dimension(2,2)::c
 character(kind=1,len=1),allocatable,dimension(:,:)::p
 allocate (p(-2:-1,0:1))
 p=reshape((/'1','2','3','4'/),(/2,2/))
 c=m0_achk(p)
 if (any(c/=p))write(6,*) "NG"
 if (any(m0_achk(p)/=p))write(6,*) "NG"
 c=m1_achk(p)
 if (any(c/=p))write(6,*) "NG"
 if (any(m1_achk(p)/=p))write(6,*) "NG"
print *,'pass'
end


