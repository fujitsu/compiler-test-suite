call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end

elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
ifun01=i+j
end function

subroutine test05()
integer a1(10),a2(10),ii(10)
logical ia(10)
character ib(10)
type ty1
 sequence
 integer a
end type
type (ty1) :: ic(10)
a1=1
a2=1
ii=ifun01(a1,a2)
ii=ifun02(a1,a2)
ii=ifun03(a1,a2)
ii=ifun04(a1,a2)
ii=ifun05(a1,a2)
ii=ifun06(a1,a2)
ii=ifun07(a1,a2)
ii=ifun08(a1,a2)
ii=ifun09(a1,a2)
ii=ifun10(a1,a2)
ia=ifun11(a1,a2)
ia=ifun12(a1,a2)
ia=ifun13(a1,a2)
ia=ifun14(a1,a2)
ib=ifun15(a1,a2)
ic=ifun16(a1,a2)
contains
elemental function ifun01(i,j) result(ians)
integer(kind=1) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun02(i,j) result(ians)
integer(kind=2) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun03(i,j) result(ians)
integer(kind=4) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun04(i,j) result(ians)
integer(kind=4) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun05(i,j) result(ians)
real(kind=4) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun06(i,j) result(ians)
real(kind=8) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun07(i,j) result(ians)
real(kind=16) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun08(i,j) result(ians)
complex(kind=4) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun09(i,j) result(ians)
complex(kind=8) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun10(i,j) result(ians)
complex(kind=16) ians
intent(in) :: i,j
integer i
integer j
ians=i+j
end function
elemental function ifun11(i,j) result(ians)
logical(kind=1) ians
intent(in) :: i,j
integer i
integer j
ians=btest(i,j)
end function
elemental function ifun12(i,j) result(ians)
logical(kind=2) ians
intent(in) :: i,j
integer i
integer j
ians=btest(i,j)
end function
elemental function ifun13(i,j) result(ians)
logical(kind=4) ians
intent(in) :: i,j
integer i
integer j
ians=btest(i,j)
end function
elemental function ifun14(i,j) result(ians)
logical(kind=8) ians
intent(in) :: i,j
integer i
integer j
ians=btest(i,j)
end function
elemental function ifun15(i,j) result(ians)
character ians
intent(in) :: i,j
integer i
integer j
ians='a'
jjj=i+j
end function
elemental function ifun16(i,j) result(ians)
type ty1
 sequence
 integer a
end type
type (ty1) :: ians
intent(in) :: i,j
integer i
integer j
ians%a=i+j
end function
end

subroutine test04()
interface ifun
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer a1(10,10,2,2,2,2,2),a2(10,10,2,2,2,2,2)
integer ans(10,10,2,2,2,2,2)
integer bbb(10,10,2,2,2,2,2)
forall (i=1:10,j=1:10,i3=1:2,i4=1:2,i5=1:2,i6=1:2,i7=1:2)
 a1(i,j,i3,i4,i5,i6,i7)=i*j
 a2(i,j,i3,i4,i5,i6,i7)=a1(i,j,i3,i4,i5,i6,i7)+1
end forall
bbb=a1+a2
ans=ifun(a1,a2)
if (.not.all(ans.eq.bbb))write(6,*) "NG"
ans=ifun(a1,2)
if (.not.all(ans.eq.a1+2))write(6,*) "NG"
ans=ifun(1,a2)
if (.not.all(ans.eq.a2+1))write(6,*) "NG"
end

subroutine test03()
interface ifun
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer a1(10,10),a2(10,10)
integer ans(10,10)
integer bbb(10,10)
forall (i=1:10,j=1:10)
 a1(i,j)=i*j
 a2(i,j)=a1(i,j)+1
end forall
bbb=a1+a2
ans=ifun(a1,a2)
if (.not.all(ans.eq.bbb))write(6,*) "NG"
ans=ifun(a1,2)
if (.not.all(ans.eq.a1+2))write(6,*) "NG"
ans=ifun(1,a2)
if (.not.all(ans.eq.a2+1))write(6,*) "NG"
end

subroutine test02()
interface ifun
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer a1(10),a2(10)
a1=(/1,2,3,4,5,6,7,8,9,10/)
a2=(/(i,i=1,10)/)
idim=10
call inter_sub06(a1,a2,1,10)
contains
subroutine  inter_sub06(arr1,arr2,iii,jjj)
integer arr1(iii:jjj),arr2(iii:jjj)
integer ans(10)
ans=ifun(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
end

subroutine test01()
interface 
elemental function ifun01(i,j)
intent(in) :: i,j
integer i
integer j
end function
end interface
integer a1(10),a2(10)
a1=(/1,2,3,4,5,6,7,8,9,10/)
a2=(/(i,i=1,10)/)
call inter_sub01(a1,a2)
call inter_sub02(a1,a2)
idim=10
call inter_sub03(a1,a2)
call inter_sub04(a1,a2,1)
call inter_sub05(a1,a2,10)
call inter_sub06(a1,a2,1,10)
contains
subroutine  inter_sub06(arr1,arr2,iii,jjj)
integer arr1(iii:jjj),arr2(iii:jjj)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
subroutine  inter_sub05(arr1,arr2,iii)
integer arr1(iii),arr2(iii)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
subroutine  inter_sub04(arr1,arr2,iii)
integer arr1(iii:10),arr2(iii:10)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
subroutine  inter_sub03(arr1,arr2)
integer arr1(idim),arr2(idim)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
subroutine  inter_sub02(arr1,arr2)
integer arr1(:),arr2(:)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
subroutine  inter_sub01(arr1,arr2)
integer arr1(10),arr2(10)
integer ans(10)
ans=ifun01(arr1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)*2,1))write(6,*) "NG"
ans=ifun01(arr1,2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+2,1))write(6,*) "NG"
ans=ifun01(1,arr2)
if (.not.all(ans.eq.(/(i,i=1,10)/)+1,1))write(6,*) "NG"
end subroutine
end subroutine
