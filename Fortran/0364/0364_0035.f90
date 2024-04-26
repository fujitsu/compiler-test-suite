module mod
integer::stopper
end module mod
!
module mod_b
use mod,st_a=>stopper
integer::stopper
contains
!
recursive subroutine sub_b(a,b)
integer,dimension(5)::a,b
integer::i,j,ks,k1,k2,k3,ke
stopper=1
if ( st_a==0 ) call sub_a(a,b)
do i =b(a(b(a(1)))),b(a(b(a(1))))
stopper=2
if ( st_a==1 ) call sub_a(a,b)
do j =b(a(b(a(1)))),b(a(b(a(1))))
stopper=3
if ( st_a==2 ) call sub_a(a,b)
do ks=b(a(b(a(1)))),b(a(b(a(1))))
stopper=4
if ( st_a==3 ) call sub_a(a,b)
do k1=b(a(b(a(1)))),b(a(b(a(1))))
stopper=5
if ( st_a==4 ) call sub_a(a,b)
do k2=b(a(b(a(1)))),b(a(b(a(1))))
stopper=6
if ( st_a==5 ) call sub_a(a,b)
do k3=b(a(b(a(1)))),b(a(b(a(1))))
stopper=7
if ( st_a==6 ) call sub_a(a,b)
do ke=b(a(b(a(1)))),b(a(b(a(1))))
  if ( b(a(b(a( i*j*ks*k1*k2*k3*ke)))).ne. &
	        i*j*ks*k1*k2*k3*ke         ) print *,'ng'
enddo
enddo
enddo
enddo
enddo
enddo
enddo
return
end subroutine sub_b
end module mod_b
!
recursive subroutine sub_a(a,b)
use mod
use mod_b,st_b=>stopper
integer,dimension(5)::a,b
integer::i,j,ks,k1,k2,k3,ke
stopper=1
if ( st_b==0 ) call sub_b(a,b)
do i =b(a(b(a(1)))),b(a(b(a(1))))
stopper=2
if ( st_b==1 ) call sub_b(a,b)
do j =b(a(b(a(1)))),b(a(b(a(1))))
stopper=3
if ( st_b==2 ) call sub_b(a,b)
do ks=b(a(b(a(1)))),b(a(b(a(1))))
stopper=4
if ( st_b==3 ) call sub_b(a,b)
do k1=b(a(b(a(1)))),b(a(b(a(1))))
stopper=5
if ( st_b==4 ) call sub_b(a,b)
do k2=b(a(b(a(1)))),b(a(b(a(1))))
stopper=6
if ( st_b==5 ) call sub_b(a,b)
do k3=b(a(b(a(1)))),b(a(b(a(1))))
stopper=7
if ( st_b==6 ) call sub_b(a,b)
do ke=b(a(b(a(1)))),b(a(b(a(1))))
  if ( b(a(b(a( i*j*ks*k1*k2*k3*ke)))).ne. &
	        i*j*ks*k1*k2*k3*ke         ) print *,'ng'
enddo
enddo
enddo
enddo
enddo
enddo
enddo
return
end subroutine sub_a
!
use mod,st_a=>stopper
use mod_b,st_b=>stopper
integer,dimension(5),parameter::a=(/1,2,3,4,5/),b=(/(i,i=1,5)/)
st_a=0
st_b=0
call sub_a(a,b)
st_a=0
st_b=0
call sub_b(a,b)
print *,'test end'
stop
end
