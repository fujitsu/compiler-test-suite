print *,'pass'
end

subroutine test01()
type ty01
 integer :: i01 =1
 type(ty02),pointer :: ip01=>null()
 integer :: i02 =2
 type(ty02),pointer :: ip02=>null()
 integer :: i03 =3
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
end type
type ty02
 type(ty01) :: t01
 integer :: i04=4
 integer :: i05=5
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
if (str(1)%i04.ne.4_4) write(6,*) "NG"
if (str(1)%i05.ne.5_4) write(6,*) "NG"
if (str(1)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(1)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(1)%t01%i03.ne.3_4) write(6,*) "NG"
end
subroutine test02()
type ty01
 type(ty02),pointer :: ip01=>null()
 type(ty02),pointer :: ip02=>null()
 integer :: i01 =1
 integer :: i03 =3
 integer :: i02 =2
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
end type
type ty02
 integer :: i04=4
 integer :: i05=5
 type(ty01) :: t01
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
if (str(1)%i04.ne.4_4) write(6,*) "NG"
if (str(1)%i05.ne.5_4) write(6,*) "NG"
if (str(1)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(1)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(1)%t01%i03.ne.3_4) write(6,*) "NG"
end
subroutine test03()
type ty01
 type(ty02),pointer :: ip01=>null()
 integer :: i01 =1
 integer :: i02 =2
 integer :: i03 =3
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
 type(ty02),pointer :: ip02=>null()
end type
type ty02
 integer :: i04=4
 type(ty01) :: t01
 integer :: i05=5
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
if (str(1)%i04.ne.4_4) write(6,*) "NG"
if (str(1)%i05.ne.5_4) write(6,*) "NG"
if (str(1)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(1)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(1)%t01%i03.ne.3_4) write(6,*) "NG"
end
subroutine test04()
type ty01
 integer :: i01 =1
 integer :: i02 =2
 type(ty02),pointer :: ip01=>null()
 type(ty02),pointer :: ip02=>null()
 integer :: i03 =3
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
end type
type ty02
 type(ty01) :: t01
 integer :: i04=4
 integer :: i05=5
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
if (str(1)%i04.ne.4_4) write(6,*) "NG"
if (str(1)%i05.ne.5_4) write(6,*) "NG"
if (str(1)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(1)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(1)%t01%i03.ne.3_4) write(6,*) "NG"
end
subroutine test05()
type ty01
 integer :: i01 =1
 integer :: i02 =2
 integer :: i03 =3
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
 type(ty02),pointer :: ip01=>null()
 type(ty02),pointer :: ip02=>null()
end type
type ty02
 type(ty01) :: t01
 integer :: i04=4
 integer :: i05=5
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
do j=1,10
if (str(j)%i04.ne.4_4) write(6,*) "NG"
if (str(j)%i05.ne.5_4) write(6,*) "NG"
if (str(j)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(j)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(j)%t01%i03.ne.3_4) write(6,*) "NG"
end do
end
subroutine test06()
type ty01
 integer :: i01 =1
 integer :: i02 =2
 type(ty02),pointer :: ip01=>null()
 integer :: i03 =3
 integer   ,pointer :: ip03=>null()
 integer   ,pointer :: ip04=>null()
 type(ty02),pointer :: ip02=>null()
end type
type ty02
 type(ty02),pointer :: ip05=>null()
 integer :: i04=4
 type(ty01) :: t01
 integer :: i05=5
 type(ty02),pointer :: ip06=>null()
 type(ty02),pointer :: ip07=>null()
 type(ty02),pointer :: ip08=>null()
end type
type (ty02) :: str
allocatable :: str(:)
allocate(str(1:10))
do j=1,10
if (str(j)%i04.ne.4_4) write(6,*) "NG"
if (str(j)%i05.ne.5_4) write(6,*) "NG"
if (str(j)%t01%i01.ne.1_4) write(6,*) "NG"
if (str(j)%t01%i02.ne.2_4) write(6,*) "NG"
if (str(j)%t01%i03.ne.3_4) write(6,*) "NG"
end do
end
