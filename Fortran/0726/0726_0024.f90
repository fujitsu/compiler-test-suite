call test01()
call test02()
print *,'pass'
end

block data aaaa
common /com/ ierr
data ierr /0/
end

subroutine test01()
type ty1
 integer :: ia1=1
 integer,pointer,dimension(:) :: ip1=>null()
 integer :: ia2=2
end type
type (ty1) :: str(10)
type ty2
 type (ty1) :: tt2(10)
end type
type (ty2) :: str2(10),str3(10)
type ty3
 type (ty1) :: tt3(10)=ty1(3,null(),7)
end type
type (ty3) :: str4(10),str5(10)
allocate(str(1)%ip1(1),stat=ierr)
do id1=1,10
if (str(id1)%ia1.ne.1) write(6,*) "NG"
if (str(id1)%ia2.ne.2) write(6,*) "NG"
  do id2=1,10
  if (str2(id1)%tt2(id2)%ia1.ne.1) write(6,*) "NG"
  if (str2(id1)%tt2(id2)%ia2.ne.2) write(6,*) "NG"
  if (str3(id1)%tt2(id2)%ia1.ne.1) write(6,*) "NG"
  if (str3(id1)%tt2(id2)%ia2.ne.2) write(6,*) "NG"
  if (str4(id1)%tt3(id2)%ia1.ne.3) write(6,*) "NG"
  if (str4(id1)%tt3(id2)%ia2.ne.7) write(6,*) "NG"
  if (str5(id1)%tt3(id2)%ia1.ne.3) write(6,*) "NG"
  if (str5(id1)%tt3(id2)%ia2.ne.7) write(6,*) "NG"
  end do
end do
end

subroutine test02()
type ty1
 integer :: ia1=1
 type (ty1) ,pointer,dimension(:) :: ip1=>null()
 integer :: ia2=2
end type
type (ty1) :: str(10)
type ty2
 type (ty1) :: tt2(10)
end type
type (ty2) :: str2(10),str3(10)
type ty3
 type (ty1) :: tt3(10)=ty1(3,null(),7)
end type
type (ty3) :: str4(10),str5(10)
allocate(str(1)%ip1(1),stat=ierr)
do id1=1,10
if (str(id1)%ia1.ne.1) write(6,*) "NG"
if (str(id1)%ia2.ne.2) write(6,*) "NG"
  do id2=1,10
  if (str2(id1)%tt2(id2)%ia1.ne.1) write(6,*) "NG"
  if (str2(id1)%tt2(id2)%ia2.ne.2) write(6,*) "NG"
  if (str3(id1)%tt2(id2)%ia1.ne.1) write(6,*) "NG"
  if (str3(id1)%tt2(id2)%ia2.ne.2) write(6,*) "NG"
  if (str4(id1)%tt3(id2)%ia1.ne.3) write(6,*) "NG"
  if (str4(id1)%tt3(id2)%ia2.ne.7) write(6,*) "NG"
  if (str5(id1)%tt3(id2)%ia1.ne.3) write(6,*) "NG"
  if (str5(id1)%tt3(id2)%ia2.ne.7) write(6,*) "NG"
  end do
end do

end
