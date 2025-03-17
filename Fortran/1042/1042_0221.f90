module m1
  type x
    integer ::x1=2
  end type
  type(x),save::v11
end
module m2
use m1,y=>x
use m1,yy=>x
type(y),save::v21
type(yy),save::v22
end
use m1,x=>x
use m1,xxx=>x
use m2,yyy=>yy
use m1,xxxx=>x
use m2,yyyy=>yy
use m2,yy=>yy
type(xxxx)::v01
type(yyyy)::v02
type(yy)::v03
type(yyy)::v04
type(xxx)::v05
type(x)::v06
call sub
print *,'pass'
contains
subroutine sub
use m1,z=>x
use m2,w=>y
type(x)::v31
type(y)::v32
type(z)::v33
type(w)::v34
type(yy)::v35
type(yyy)::v36
type(xxx)::v37
if (v01%x1/=2)write(6,*) "NG"
if (v02%x1/=2)write(6,*) "NG"
if (v03%x1/=2)write(6,*) "NG"
if (v04%x1/=2)write(6,*) "NG"
if (v05%x1/=2)write(6,*) "NG"
if (v06%x1/=2)write(6,*) "NG"
if (v11%x1/=2)write(6,*) "NG"
if (v21%x1/=2)write(6,*) "NG"
if (v22%x1/=2)write(6,*) "NG"
if (v31%x1/=2)write(6,*) "NG"
if (v32%x1/=2)write(6,*) "NG"
if (v33%x1/=2)write(6,*) "NG"
if (v34%x1/=2)write(6,*) "NG"
if (v35%x1/=2)write(6,*) "NG"
if (v36%x1/=2)write(6,*) "NG"
if (v37%x1/=2)write(6,*) "NG"
v01=v01
v02=v01
v03=v01
v04=v01
v05=v01
v06=v01
v11=v01
v21=v01
v22=v01
v31=v01
v32=v01
v33=v01
v34=v01
v35=v01
v36=v01
v37=v01
if (v01%x1/=2)write(6,*) "NG"
if (v02%x1/=2)write(6,*) "NG"
if (v03%x1/=2)write(6,*) "NG"
if (v04%x1/=2)write(6,*) "NG"
if (v05%x1/=2)write(6,*) "NG"
if (v06%x1/=2)write(6,*) "NG"
if (v11%x1/=2)write(6,*) "NG"
if (v21%x1/=2)write(6,*) "NG"
if (v22%x1/=2)write(6,*) "NG"
if (v31%x1/=2)write(6,*) "NG"
if (v32%x1/=2)write(6,*) "NG"
if (v33%x1/=2)write(6,*) "NG"
if (v34%x1/=2)write(6,*) "NG"
if (v35%x1/=2)write(6,*) "NG"
if (v36%x1/=2)write(6,*) "NG"
if (v37%x1/=2)write(6,*) "NG"
end subroutine
end
