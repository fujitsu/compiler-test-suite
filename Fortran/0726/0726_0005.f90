call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test00()
print *,'pass'
end

subroutine test00()
type ty01
 integer(kind=1)    :: a01 =(3.0_16,1.0_16)
 integer(kind=2)    :: a02 =(3.0_16,1.0_16)
 integer(kind=4)    :: a03 =(3.0_16,1.0_16)
 integer(kind=8)    :: a04 =(3.0_16,1.0_16)
 real(kind=4)       :: a05 =(3.0_16,1.0_16)
 real(kind=8)       :: a06 =(3.0_16,1.0_16)
 real(kind=16)      :: a07 =(3.0_16,1.0_16)
 complex(kind=4)    :: a08 =(3.0_16,1.0_16)
 complex(kind=8)    :: a09 =(3.0_16,1.0_16)
 complex(kind=16)   :: a00 =(3.0_16,1.0_16)
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.3_1) write(6,*) "NG"
if (str%a02.ne.3_2) write(6,*) "NG"
if (str%a03.ne.3_4) write(6,*) "NG"
if (str%a04.ne.3_8) write(6,*) "NG"
if (str%a05.ne.3.0_4) write(6,*) "NG"
if (str%a06.ne.3.0_8) write(6,*) "NG"
if (str%a07.ne.3.0_16) write(6,*) "NG"
if (str%a08.ne.(3.0_4,1.0_4)) write(6,*) "NG"
if (str%a09.ne.(3.0_8,1.0_8)) write(6,*) "NG"
if (str%a00.ne.(3.0_16,1.0_16)) write(6,*) "NG"
end

subroutine test09()
type ty01
 integer(kind=1)    :: a01 =(4.0_8,1.0_8)
 integer(kind=2)    :: a02 =(4.0_8,1.0_8)
 integer(kind=4)    :: a03 =(4.0_8,1.0_8)
 integer(kind=8)    :: a04 =(4.0_8,1.0_8)
 real(kind=4)       :: a05 =(4.0_8,1.0_8)
 real(kind=8)       :: a06 =(4.0_8,1.0_8)
 real(kind=16)      :: a07 =(4.0_8,1.0_8)
 complex(kind=4)    :: a08 =(4.0_8,1.0_8)
 complex(kind=8)    :: a09 =(4.0_8,1.0_8)
 complex(kind=16)   :: a00 =(4.0_8,1.0_8)
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.4_1) write(6,*) "NG"
if (str%a02.ne.4_2) write(6,*) "NG"
if (str%a03.ne.4_4) write(6,*) "NG"
if (str%a04.ne.4_8) write(6,*) "NG"
if (str%a05.ne.4.0_4) write(6,*) "NG"
if (str%a06.ne.4.0_8) write(6,*) "NG"
if (str%a07.ne.4.0_16) write(6,*) "NG"
if (str%a08.ne.(4.0_4,1.0_4)) write(6,*) "NG"
if (str%a09.ne.(4.0_8,1.0_8)) write(6,*) "NG"
if (str%a00.ne.(4.0_16,1.0_16)) write(6,*) "NG"
end

subroutine test08()
type ty01
 integer(kind=1)    :: a01 =(2.0_4,1.0_4)
 integer(kind=2)    :: a02 =(2.0_4,1.0_4)
 integer(kind=4)    :: a03 =(2.0_4,1.0_4)
 integer(kind=8)    :: a04 =(2.0_4,1.0_4)
 real(kind=4)       :: a05 =(2.0_4,1.0_4)
 real(kind=8)       :: a06 =(2.0_4,1.0_4)
 real(kind=16)      :: a07 =(2.0_4,1.0_4)
 complex(kind=4)    :: a08 =(2.0_4,1.0_4)
 complex(kind=8)    :: a09 =(2.0_4,1.0_4)
 complex(kind=16)   :: a00 =(2.0_4,1.0_4)
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.2_1) write(6,*) "NG"
if (str%a02.ne.2_2) write(6,*) "NG"
if (str%a03.ne.2_4) write(6,*) "NG"
if (str%a04.ne.2_8) write(6,*) "NG"
if (str%a05.ne.2.0_4) write(6,*) "NG"
if (str%a06.ne.2.0_8) write(6,*) "NG"
if (str%a07.ne.2.0_16) write(6,*) "NG"
if (str%a08.ne.(2.0_4,1.0_4)) write(6,*) "NG"
if (str%a09.ne.(2.0_8,1.0_8)) write(6,*) "NG"
if (str%a00.ne.(2.0_16,1.0_16)) write(6,*) "NG"
end

subroutine test07()
type ty01
 integer(kind=1)    :: a01 =3.0_16
 integer(kind=2)    :: a02 =3.0_16
 integer(kind=4)    :: a03 =3.0_16
 integer(kind=8)    :: a04 =3.0_16
 real(kind=4)       :: a05 =3.0_16
 real(kind=8)       :: a06 =3.0_16
 real(kind=16)      :: a07 =3.0_16
 complex(kind=4)    :: a08 =3.0_16
 complex(kind=8)    :: a09 =3.0_16
 complex(kind=16)   :: a00 =3.0_16
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.3_1) write(6,*) "NG"
if (str%a02.ne.3_2) write(6,*) "NG"
if (str%a03.ne.3_4) write(6,*) "NG"
if (str%a04.ne.3_8) write(6,*) "NG"
if (str%a05.ne.3.0_4) write(6,*) "NG"
if (str%a06.ne.3.0_8) write(6,*) "NG"
if (str%a07.ne.3.0_16) write(6,*) "NG"
if (str%a08.ne.(3.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(3.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(3.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test06()
type ty01
 integer(kind=1)    :: a01 =2.0_8
 integer(kind=2)    :: a02 =2.0_8
 integer(kind=4)    :: a03 =2.0_8
 integer(kind=8)    :: a04 =2.0_8
 real(kind=4)       :: a05 =2.0_8
 real(kind=8)       :: a06 =2.0_8
 real(kind=16)      :: a07 =2.0_8
 complex(kind=4)    :: a08 =2.0_8
 complex(kind=8)    :: a09 =2.0_8
 complex(kind=16)   :: a00 =2.0_8
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.2_1) write(6,*) "NG"
if (str%a02.ne.2_2) write(6,*) "NG"
if (str%a03.ne.2_4) write(6,*) "NG"
if (str%a04.ne.2_8) write(6,*) "NG"
if (str%a05.ne.2.0_4) write(6,*) "NG"
if (str%a06.ne.2.0_8) write(6,*) "NG"
if (str%a07.ne.2.0_16) write(6,*) "NG"
if (str%a08.ne.(2.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(2.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(2.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test05()
type ty01
 integer(kind=1)    :: a01 =9.0_4
 integer(kind=2)    :: a02 =9.0_4
 integer(kind=4)    :: a03 =9.0_4
 integer(kind=8)    :: a04 =9.0_4
 real(kind=4)       :: a05 =9.0_4
 real(kind=8)       :: a06 =9.0_4
 real(kind=16)      :: a07 =9.0_4
 complex(kind=4)    :: a08 =9.0_4
 complex(kind=8)    :: a09 =9.0_4
 complex(kind=16)   :: a00 =9.0_4
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.9_1) write(6,*) "NG"
if (str%a02.ne.9_2) write(6,*) "NG"
if (str%a03.ne.9_4) write(6,*) "NG"
if (str%a04.ne.9_8) write(6,*) "NG"
if (str%a05.ne.9.0_4) write(6,*) "NG"
if (str%a06.ne.9.0_8) write(6,*) "NG"
if (str%a07.ne.9.0_16) write(6,*) "NG"
if (str%a08.ne.(9.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(9.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(9.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test04()
type ty01
 integer(kind=1)    :: a01 =1_8
 integer(kind=2)    :: a02 =1_8
 integer(kind=4)    :: a03 =1_8
 integer(kind=8)    :: a04 =1_8
 real(kind=4)       :: a05 =1_8
 real(kind=8)       :: a06 =1_8
 real(kind=16)      :: a07 =1_8
 complex(kind=4)    :: a08 =1_8
 complex(kind=8)    :: a09 =1_8
 complex(kind=16)   :: a00 =1_8
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.1_1) write(6,*) "NG"
if (str%a02.ne.1_2) write(6,*) "NG"
if (str%a03.ne.1_4) write(6,*) "NG"
if (str%a04.ne.1_8) write(6,*) "NG"
if (str%a05.ne.1.0_4) write(6,*) "NG"
if (str%a06.ne.1.0_8) write(6,*) "NG"
if (str%a07.ne.1.0_16) write(6,*) "NG"
if (str%a08.ne.(1.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(1.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(1.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test03()
type ty01
 integer(kind=1)    :: a01 =7_4
 integer(kind=2)    :: a02 =7_4
 integer(kind=4)    :: a03 =7_4
 integer(kind=8)    :: a04 =7_4
 real(kind=4)       :: a05 =7_4
 real(kind=8)       :: a06 =7_4
 real(kind=16)      :: a07 =7_4
 complex(kind=4)    :: a08 =7_4
 complex(kind=8)    :: a09 =7_4
 complex(kind=16)   :: a00 =7_4
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.7_1) write(6,*) "NG"
if (str%a02.ne.7_2) write(6,*) "NG"
if (str%a03.ne.7_4) write(6,*) "NG"
if (str%a04.ne.7_8) write(6,*) "NG"
if (str%a05.ne.7.0_4) write(6,*) "NG"
if (str%a06.ne.7.0_8) write(6,*) "NG"
if (str%a07.ne.7.0_16) write(6,*) "NG"
if (str%a08.ne.(7.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(7.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(7.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test02()
type ty01
 integer(kind=1)    :: a01 =2_2
 integer(kind=2)    :: a02 =2_2
 integer(kind=4)    :: a03 =2_2
 integer(kind=8)    :: a04 =2_2
 real(kind=4)       :: a05 =2_2
 real(kind=8)       :: a06 =2_2
 real(kind=16)      :: a07 =2_2
 complex(kind=4)    :: a08 =2_2
 complex(kind=8)    :: a09 =2_2
 complex(kind=16)   :: a00 =2_2
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.2_1) write(6,*) "NG"
if (str%a02.ne.2_2) write(6,*) "NG"
if (str%a03.ne.2_4) write(6,*) "NG"
if (str%a04.ne.2_8) write(6,*) "NG"
if (str%a05.ne.2.0_4) write(6,*) "NG"
if (str%a06.ne.2.0_8) write(6,*) "NG"
if (str%a07.ne.2.0_16) write(6,*) "NG"
if (str%a08.ne.(2.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(2.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(2.0_16,0.0_16)) write(6,*) "NG"
end

subroutine test01()
type ty01
 integer(kind=1)    :: a01 =5_1
 integer(kind=2)    :: a02 =5_1
 integer(kind=4)    :: a03 =5_1
 integer(kind=8)    :: a04 =5_1
 real(kind=4)       :: a05 =5_1
 real(kind=8)       :: a06 =5_1
 real(kind=16)      :: a07 =5_1
 complex(kind=4)    :: a08 =5_1
 complex(kind=8)    :: a09 =5_1
 complex(kind=16)   :: a00 =5_1
end type
type (ty01),pointer ::str
allocate(str)
if (str%a01.ne.5_1) write(6,*) "NG"
if (str%a02.ne.5_2) write(6,*) "NG"
if (str%a03.ne.5_4) write(6,*) "NG"
if (str%a04.ne.5_8) write(6,*) "NG"
if (str%a05.ne.5.0_4) write(6,*) "NG"
if (str%a06.ne.5.0_8) write(6,*) "NG"
if (str%a07.ne.5.0_16) write(6,*) "NG"
if (str%a08.ne.(5.0_4,0.0_4)) write(6,*) "NG"
if (str%a09.ne.(5.0_8,0.0_8)) write(6,*) "NG"
if (str%a00.ne.(5.0_16,0.0_16)) write(6,*) "NG"
end 

blockdata ssss
common /com/ i
data i/1/
end
