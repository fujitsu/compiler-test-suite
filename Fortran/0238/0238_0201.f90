module m1
type e
     integer(8):: y(2) 
     integer(8),allocatable:: yy (:)
end type
  type r
     integer:: x00(8) 
     complex,allocatable:: x11(:) 
     real,allocatable:: x12(:) 
     type(e),allocatable:: x13(:) 
     character,allocatable:: x14(:) 
  end type
  type x0
     integer:: x01 
     integer,allocatable:: x02(:)
     type(r),allocatable:: x52(:)
     integer:: x11 
     integer,allocatable:: x12(:)
     integer,allocatable:: x92(:)
  end type
type w1
integer::x(8)
type (x0),allocatable::v1(:)
end type
type w2
integer::x(80)
type (x0),allocatable::v2(:)
end type
contains
subroutine s1(vv1,vv2)
type (w1):: vv1(:)
type (w2)  :: vv2(:)


allocate(vv2(2)%v2(2))
do k=1,2
allocate(vv2(2)%v2(k)%x02(2))
vv2(2)%v2(k)%x02(1)=1
vv2(2)%v2(k)%x02(2)=2
allocate(vv2(2)%v2(k)%x92(2))
vv2(2)%v2(k)%x92(1)=-1
vv2(2)%v2(k)%x92(2)=-2
allocate(vv2(2)%v2(k)%x52(2))
allocate(vv2(2)%v2(k)%x52(1)%x11(2))
allocate(vv2(2)%v2(k)%x52(1)%x12(2))
allocate(vv2(2)%v2(k)%x52(1)%x13(2))
allocate(vv2(2)%v2(k)%x52(1)%x13(2)%yy(3))
allocate(vv2(2)%v2(k)%x52(1)%x14(2))
allocate(vv2(2)%v2(k)%x52(2)%x11(2))
allocate(vv2(2)%v2(k)%x52(2)%x12(2))
allocate(vv2(2)%v2(k)%x52(2)%x13(2))
allocate(vv2(2)%v2(k)%x52(2)%x13(2)%yy(3))
allocate(vv2(2)%v2(k)%x52(2)%x14(2))
vv2(2)%v2(k)%x52(1)%x11=(-1,-1.5)
vv2(2)%v2(k)%x52(1)%x12=2.5
vv2(2)%v2(k)%x52(1)%x13(2)%y=-2
vv2(2)%v2(k)%x52(1)%x13(2)%yy(1)=-21
vv2(2)%v2(k)%x52(1)%x13(2)%yy(2)=-22
vv2(2)%v2(k)%x52(1)%x13(2)%yy(3)=-23
vv2(2)%v2(k)%x52(1)%x14='a'
vv2(2)%v2(k)%x52(2)%x11=(-3,-3.5)
vv2(2)%v2(k)%x52(2)%x12=-4.5
vv2(2)%v2(k)%x52(2)%x13(2)%y=-3
vv2(2)%v2(k)%x52(2)%x13(2)%yy(1)=-31
vv2(2)%v2(k)%x52(2)%x13(2)%yy(2)=-32
vv2(2)%v2(k)%x52(2)%x13(2)%yy(3)=-33
vv2(2)%v2(k)%x52(2)%x14='b'
end do

allocate( vv1(1)%v1 ,source=vv2(2)%v2,stat=knm) 
if (knm/=0) print *,777

do k=1,2
if (vv1(1)%v1(k)%x02(1)/=1) print *,101
if (vv1(1)%v1(k)%x02(2)/=2) print *,102
if (vv2(2)%v2(k)%x02(1)/=1) print *,103
if (vv2(2)%v2(k)%x02(2)/=2) print *,104
if (vv1(1)%v1(k)%x92(1)/=-1) print *,101
if (vv1(1)%v1(k)%x92(2)/=-2) print *,102
if (vv2(2)%v2(k)%x92(1)/=-1) print *,103
if (vv2(2)%v2(k)%x92(2)/=-2) print *,104
if (any(vv2(2)%v2(k)%x52(1)%x11/=(-1,-1.5))) print *,1031
if (any(vv2(2)%v2(k)%x52(1)%x12/=2.5)) print *,21031
if (any(vv2(2)%v2(k)%x52(1)%x13(2)%y/=-2)) print *,1032
if (   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(1)/=-21)) print *,1032
if (   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(2)/=-22)) print *,1032
if (   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(3)/=-23)) print *,1032
if (any(vv2(2)%v2(k)%x52(1)%x14/='a')) print *,31031
if (any(vv2(2)%v2(k)%x52(2)%x11/=(-3,-3.5))) print *,41031
if (any(vv2(2)%v2(k)%x52(2)%x12/=-4.5)) print *,51031
if (any(vv2(2)%v2(k)%x52(2)%x13(2)%y/=-3)) print *,1032
if (   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(1)/=-31)) print *,1032
if (   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(2)/=-32)) print *,1032
if (   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(3)/=-33)) print *,1032
if (any(vv2(2)%v2(k)%x52(2)%x14/='b')) print *,61031

if (any(vv1(1)%v1(k)%x52(1)%x11/=(-1,-1.5))) print *,71031
if (any(vv1(1)%v1(k)%x52(1)%x12/=2.5)) print *,81031
if (any(vv1(1)%v1(k)%x52(1)%x13(2)%y/=-2)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(1)/=-21)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(2)/=-22)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(3)/=-23)) print *,1032
if (any(vv1(1)%v1(k)%x52(1)%x14/='a')) print *,91031
if (any(vv1(1)%v1(k)%x52(2)%x11/=(-3,-3.5))) print *,101031
if (any(vv1(1)%v1(k)%x52(2)%x12/=-4.5)) print *,111031
if (any(vv1(1)%v1(k)%x52(2)%x13(2)%y/=-3)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(1)/=-31)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(2)/=-32)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(3)/=-33)) print *,1032
if (any(vv1(1)%v1(k)%x52(2)%x14/='b')) print *,121031
end do

do k=1,2
vv2(2)%v2(k)%x52(1)%x11=(-1,-1.5)+100
vv2(2)%v2(k)%x52(1)%x12=2.5+100
vv2(2)%v2(k)%x52(1)%x13(2)%y=-2+100
vv2(2)%v2(k)%x52(1)%x13(2)%yy(1)=-21+100
vv2(2)%v2(k)%x52(1)%x13(2)%yy(2)=-22+100
vv2(2)%v2(k)%x52(1)%x13(2)%yy(3)=-23+100
vv2(2)%v2(k)%x52(1)%x14='1'
vv2(2)%v2(k)%x52(2)%x11=(-3,-3.5)+100
vv2(2)%v2(k)%x52(2)%x12=-4.5+100
vv2(2)%v2(k)%x52(2)%x13(2)%y=-3+100
vv2(2)%v2(k)%x52(2)%x13(2)%yy(1)=-31+100
vv2(2)%v2(k)%x52(2)%x13(2)%yy(2)=-32+100
vv2(2)%v2(k)%x52(2)%x13(2)%yy(3)=-33+100
vv2(2)%v2(k)%x52(2)%x14='2'
end do

do k=1,2
vv2(2)%v2(k)%x02(1)=11
vv2(2)%v2(k)%x02(2)=12
vv2(2)%v2(k)%x92(1)=-11
vv2(2)%v2(k)%x92(2)=-12
if (vv1(1)%v1(k)%x02(1)/=1) print *,201
if (vv1(1)%v1(k)%x02(2)/=2) print *,202
if (vv2(2)%v2(k)%x02(1)/=11) print *,203
if (vv2(2)%v2(k)%x02(2)/=12) print *,204
if (vv1(1)%v1(k)%x92(1)/=-1) print *,201
if (vv1(1)%v1(k)%x92(2)/=-2) print *,202
if (vv2(2)%v2(k)%x92(1)/=-11) print *,203
if (vv2(2)%v2(k)%x92(2)/=-12) print *,204
end do

do k=1,2
if (any(vv1(1)%v1(k)%x52(1)%x11/=(-1,-1.5))) print *,131031
if (any(vv1(1)%v1(k)%x52(1)%x12/=2.5)) print *,141031
if (any(vv1(1)%v1(k)%x52(1)%x13(2)%y/=-2)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(1)/=-21)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(2)/=-22)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(3)/=-23)) print *,1032
if (any(vv1(1)%v1(k)%x52(1)%x14/='a')) print *,151031
if (any(vv1(1)%v1(k)%x52(2)%x11/=(-3,-3.5))) print *,161031
if (any(vv1(1)%v1(k)%x52(2)%x12/=-4.5)) print *,171031
if (any(vv1(1)%v1(k)%x52(2)%x13(2)%y/=-3)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(1)/=-31)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(2)/=-32)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(3)/=-33)) print *,1032
if (any(vv1(1)%v1(k)%x52(2)%x14/='b')) print *,181031
end do

do k=1,2
if(any(vv2(2)%v2(k)%x52(1)%x11/=(-1,-1.5)+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(1)%x12/=2.5+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(1)%x13(2)%y/=-2+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(1)/=-21+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(2)/=-22+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(1)%x13(2)%yy(3)/=-23+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(1)%x14/='1')) print *,99999
if(any(vv2(2)%v2(k)%x52(2)%x11/=(-3,-3.5)+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(2)%x12/=-4.5+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(2)%x13(2)%y/=-3+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(1)/=-31+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(2)/=-32+100)) print *,99999
if(   (vv2(2)%v2(k)%x52(2)%x13(2)%yy(3)/=-33+100)) print *,99999
if(any(vv2(2)%v2(k)%x52(2)%x14/='2')) print *,99999
end do

do k=1,2
deallocate (vv2(2)%v2(k)%x02)
if (allocated(vv2(2)%v2(k)%x02)) print *,301
if (vv1(1)%v1(k)%x02(1)/=1) print *,302
if (vv1(1)%v1(k)%x02(2)/=2) print *,303
if (vv1(1)%v1(k)%x92(1)/=-1) print *,302
if (vv1(1)%v1(k)%x92(2)/=-2) print *,303

if (any(vv1(1)%v1(k)%x52(1)%x11/=(-1,-1.5))) print *,1031
if (any(vv1(1)%v1(k)%x52(1)%x12/=2.5)) print *,201031
if (any(vv1(1)%v1(k)%x52(1)%x13(2)%y/=-2)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(1)/=-21)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(2)/=-22)) print *,1032
if (   (vv1(1)%v1(k)%x52(1)%x13(2)%yy(3)/=-23)) print *,1032
if (any(vv1(1)%v1(k)%x52(1)%x14/='a')) print *,211031
if (any(vv1(1)%v1(k)%x52(2)%x11/=(-3,-3.5))) print *,221031
if (any(vv1(1)%v1(k)%x52(2)%x12/=-4.5)) print *,231031
if (any(vv1(1)%v1(k)%x52(2)%x13(2)%y/=-3)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(1)/=-31)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(2)/=-32)) print *,1032
if (   (vv1(1)%v1(k)%x52(2)%x13(2)%yy(3)/=-33)) print *,1032
if (any(vv1(1)%v1(k)%x52(2)%x14/='b')) print *,241031

deallocate (vv1(1)%v1(k)%x02)
if (allocated(vv1(1)%v1(k)%x02)) print *,401

if (allocated(vv1(1)%v1(k)%x12)) print *,801
if (allocated(vv2(2)%v2(k)%x12)) print *,8802
end do
end subroutine
end
subroutine ss
use m1
type (w1)            :: vv1(2)
type (w2)   :: vv2(2)
call s1(vv1,vv2)
end
call ss
call ss
call ss
call ss
print *,'pass'
end
