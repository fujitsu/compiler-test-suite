call test01()
call test02()
print *,'pass'
end

subroutine test01()
interface operator(.nnn.)
 function ifun00(i)
  integer*8 ,intent(in) :: i
 end function 
 function ifun01(i)
  integer*1 ,intent(in) :: i
 end function 
 function ifun02(i,j)
  integer*2 ,intent(in) :: i,j
 end function 
 function ifun03(j)
  integer*2 ,intent(in) :: j
 end function 
end interface
k=.nnn.(10_4*2_8)
if (k.ne.60) print *,'test01_1 ng'
k=.nnn.10_8
if (k.ne.30) print *,'test01_2 ng'
k=.nnn.10_1
if (k.ne.10) print *,'test01_3 ng'
k=.nnn.10_2
if (k.ne.2) print *,'test01_4 ng'
k=11_2.nnn.7_2
if (k.ne.4) print *,'test01_5 ng'
k=(.nnn.(10_4*2_8))
if (k.ne.60) print *,'test01_6 ng'
k=.nnn.(10_8)
if (k.ne.30) print *,'test01_7 ng'
k=(.nnn.10_1)
if (k.ne.10) print *,'test01_8 ng'
k=(.nnn.(10_2))
if (k.ne.2) print *,'test01_9 ng'
k=(11_2).nnn.7_2
if (k.ne.4) print *,'test01_10 ng'
k=11_2.nnn.(7_2)
if (k.ne.4) print *,'test01_11 ng'
k=(11_2.nnn.7_2)
if (k.ne.4) print *,'test01_12 ng'
k=+11_2.nnn.7_2
if (k.ne.4) print *,'test01_13 ng'
k=((11_2).nnn.7_2)
if (k.ne.4) print *,'test01_14 ng'
end subroutine
 function ifun00(i)
  integer*8 ,intent(in) :: i
  ifun00=i*3
 end function 
 function ifun01(i)
  integer*1 ,intent(in) :: i
  ifun01=i
 end function 
 function ifun02(i,j)
  integer*2 ,intent(in) :: i,j
  ifun02=kind(i)+kind(j)
 end function 
 function ifun03(j)
  integer*2 ,intent(in) :: j
  ifun03=kind(j)
 end function 

subroutine test02()
interface operator(.nnn.)
 function jfun00(i,j)
  character ,intent(in) :: i,j
 end function 
 function jfun01(i,j)
  real ,intent(in) :: i(:)
  real ,intent(in) :: j
 end function 
 function jfun02(i,j)
  integer ,intent(in) :: i,j
 end function 
 function jfun03(i,j)
  type ty1
   sequence
   integer arr
   integer brr(10)
  end type
  type (ty1) ,intent(in) :: i,j
 end function 
end interface
type ty1
   sequence
 integer arr
 integer brr(10)
end type
type (ty1) :: str
character cha
integer a(10),s
integer b(10),p
parameter (p=1,b=(/1,2,3,4,5,6,7,8,9,10/))
data a /1,2,3,4,5,6,7,8,9,10/
data s /1/
ifun(i)=i
str%arr=1
str%brr=1
cha='a'
k=ty1(1,1).nnn.str
k=ty1(1,1).nnn.ty1(1,1)
k=(0.0+a).nnn.7.0
k=(/(1.0,i=1,10)/).nnn.7.0
k='a'.nnn.'a'
k='a'(1:1).nnn.'a'
k=cha(1:1).nnn.'a'
k=a(1).nnn.7
k=b(1).nnn.7
k=int(1).nnn.7
k=p.nnn.7
k=s.nnn.7
k=ifun(1).nnn.7
k=str%arr.nnn.7
k=str%brr(1).nnn.7
k=11.nnn.7
if (k.ne.8) print *,'test02_01 ng'
end subroutine
 function jfun00(i,j)
  character,intent(in) :: i,j
  character :: k
  jfun00=len(i)*3
  if (1.ne.1) k=j
 end function 
 function jfun01(i,j)
  real ,intent(in) :: i(:),j
  jfun01=j
  if (1.ne.1) k=i(1)
 end function 
 function jfun02(i,j)
  integer ,intent(in) :: i,j
  jfun02=kind(i)+kind(j)
 end function 
 function jfun03(i,j)
  type ty1
   sequence
   integer arr
   integer brr(10)
  end type
  type (ty1) ,intent(in) :: i,j
  type (ty1) :: k
  jfun03=1
  if (1.ne.1) k=i
  if (1.ne.1) k=j
 end function 
