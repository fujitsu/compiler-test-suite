call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
interface operator(.aaa.)
 function ifunx1(i,j)
  integer,intent(in) :: i,j
 end function
 function ifun01(j)
  integer,intent(in) :: j
 end function
end interface

k=2+3.aaa.1+3
if (k.ne.9) print *,'test01_1 ng'
k=.aaa.1+3
k=2+3+(.aaa.1+3)
if (k.ne.9) print *,'test01_2 ng'
end subroutine
 function ifun01(j)
  integer,intent(in) :: j
    ifun01=j
  if (j.ne.4)ifun01=1
 end function
 function ifunx1(i,j)
  integer,intent(in),optional :: i,j
  if (.not.present(i)) then
    ifunx1=j
  else
    ifunx1=i+j-1
    if (i.ne.5)ifunx1=1
  end if
  if (j.ne.4)ifunx1=1
    ifunx1=ifunx1+1
 end function

subroutine test02()
interface operator(.aaa.)
 function ifunc3(i,j)
  integer,intent(in) :: i,j
 end function
 function ifun03(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(.sss.)
 function ifun02(i,j)
  integer,intent(in) :: i,j
 end function
end interface

k=2+3+(.aaa.1+3.sss.1)
if (k.ne.11) print *,'test02_1 ng'
end subroutine

 function ifun03(j)
  integer,intent(in) :: j
    ifun03=j
  if (j.ne.4)ifun03=1
    ifun03=ifun03+1
 end function
 function ifun02(i,j)
  integer,intent(in) :: i,j
  ifun02=i+j
  if (i.ne.5)ifun02=1
  if (j.ne.1)ifun02=1
 end function

subroutine test03()
interface operator(.aaa.)
 function jfunx3(i,j)
  integer,intent(in) :: i,j
 end function
 function jfun03(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(.sss.)
 function jfun02(i,j)
  integer,intent(in) :: i,j
 end function
end interface
interface operator(.xxx.)
 function jfun01(i,j)
  integer,intent(in) :: i,j
 end function
end interface

k=6.xxx.2+3+(.aaa.1+3.sss.1)
if (k.ne.17) print *,'test03_1 ng'
end subroutine

 function jfun03(j)
  integer,intent(in) :: j
    jfun03=j
  if (j.ne.4)jfun03=1
    jfun03=jfun03+1
 end function
 function jfunx3(i,j)
  integer,intent(in),optional :: i,j
  if (.not.present(i)) then
    jfun03=j
  else
    jfun03=i+j
    if (i.ne.5)jfun03=1
  end if
  if (j.ne.4)jfun03=1
    jfun03=jfun03+1
 end function
 function jfun02(i,j)
  integer,intent(in):: i,j
  jfun02=i+j
  if (i.ne.5)jfun02=1
  if (j.ne.1)jfun02=1
 end function
 function jfun01(i,j)
  integer,intent(in) :: i,j
  jfun01=i+j
  if (i.ne.6)jfun01=1
  if (j.ne.11)jfun01=1
 end function
