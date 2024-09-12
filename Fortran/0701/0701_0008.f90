call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

 function ifun02(i,j)
  integer,intent(in) :: i,j
  ifun02=10
  k=loc(i)+loc(j)
 end function
 function ifun01(i)
  integer,intent(in) :: i
  ifun01=20
  k=loc(i)
 end function
 function ifunx2(j)
  integer,intent(in) :: j
  ifunx2=10
  k=loc(i)+loc(j)
 end function

subroutine test01()
interface operator(.sss.)
 function ifun02(i,j)
  integer,intent(in) :: i,j
 end function
 function ifun01(i)
  integer,intent(in) :: i
 end function
end interface
integer arr(10),a(10)
jfa(ii)=ii
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=1+.sss.1
if (k.ne.21) print *,'test01 ng  1'
end subroutine

subroutine test02()
interface operator(.sss.)
 function ifun02(i,j)
  integer,intent(in) :: i,j
 end function
 function ifunx2(j)
  integer,intent(in) :: j
 end function
end interface
integer arr(10),a(10)
jfa(ii)=ii
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=1+(.sss.1)
if (k.ne.11) print *,'test02 ng  1'
end subroutine

subroutine test03()
interface operator(.sss.)
 function ifun31(i,j)
  integer,intent(in) :: i,j
 end function
 function ifun31x(j)
  integer,intent(in) :: j
 end function
end interface
integer arr(10),a(10)
jfa(ii)=ii
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=1+(.sss.1)
if (k.ne.11) print *,'test03 ng  1'
k=1.sss.1
if (k.ne.99) print *,'test03 ng  2'
k=1+(.sss.(1*10))
if (k.ne.11) print *,'test03 ng  3'
end subroutine
function ifun31(i,j)
 integer,intent(in),optional :: i,j
 if (.not.present(i)) then
   ifun31=10
 else 
   ifun31=99
 endif
 k=loc(i)
 k=loc(j)
end function
function ifun31x(j)
 integer,intent(in) :: j
   ifun31x=10
 k=loc(i)
 k=loc(j)
end function

subroutine test04()
interface operator(.sss.)
 function ifun41(i)
  integer,intent(in) :: i
 end function
end interface
integer arr(10),a(10)
jfa(ii)=ii
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i2=2;i3=3;
k=1+.sss.1
if (k.ne.12) print *,'test04 ng  1'
k=1+(.sss.2*3)
if (k.ne.37) print *,'test04 ng  2'
k=-.sss.2*3
if (k.ne.-36) print *,'test04 ng  3'
k=+.sss.2*3
if (k.ne.36) print *,'test04 ng  4'
k=+.sss.2
if (k.ne.12) print *,'test04 ng  5'
k=-.sss.2
if (k.ne.-12) print *,'test04 ng  6'
k=1+(.sss.1)
if (k.ne.12) print *,'test04 ng 11'
k=(1+(.sss.2*3))
if (k.ne.37) print *,'test04 ng 12'
k=-(.sss.2*3)
if (k.ne.-36) print *,'test04 ng 13'
k=+.sss.(2)*3
if (k.ne.36) print *,'test04 ng 14'
k=+.sss.(2)
if (k.ne.12) print *,'test04 ng 15'
k=(-.sss.(2))
if (k.ne.-12) print *,'test04 ng 16'
k=1+.sss.a(1)
if (k.ne.12) print *,'test04 ng 21'
k=1+(.sss.a(2)*a(3))
if (k.ne.37) print *,'test04 ng 22'
k=-.sss.a(2)*a(3)
if (k.ne.-36) print *,'test04 ng 23'
k=+.sss.a(2)*a(3)
if (k.ne.36) print *,'test04 ng 24'
k=+.sss.a(2)
if (k.ne.12) print *,'test04 ng 25'
k=-.sss.a(2)
if (k.ne.-12) print *,'test04 ng 26'
k=1+.sss.int(1)
if (k.ne.12) print *,'test04 ng 31'
k=1+(.sss.int(2)*int(3))
if (k.ne.37) print *,'test04 ng 32'
k=-.sss.int(2)*int(3)
if (k.ne.-36) print *,'test04 ng 33'
k=+.sss.int(2)*int(3)
if (k.ne.36) print *,'test04 ng 34'
k=+.sss.int(2)
if (k.ne.12) print *,'test04 ng 35'
k=-.sss.int(2)
if (k.ne.-12) print *,'test04 ng 36'
end subroutine
function ifun41(i)
 integer,intent(in) :: i
 ifun41=i+10
end function
