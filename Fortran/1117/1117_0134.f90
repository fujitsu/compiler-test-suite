call test01()
print *,'pass'
end

subroutine test01()
type ty00
 integer,dimension(2,10) :: i=reshape((/(i,i=1,20)/),(/2,10/))
end type
type           ty01 ; type (ty00) :: s01(1) ; end type
type           ty02 ; type (ty01) :: s02(1) ; end type
type           ty03 ; type (ty02) :: s03(1) ; end type
type           ty04 ; type (ty03) :: s04(1) ; end type
type           ty05 ; type (ty04) :: s05(1) ; end type
type           ty06 ; type (ty05) :: s06(1) ; end type
type           ty07 ; type (ty06) :: s07(1) ; end type
type           ty08 ; type (ty07) :: s08(1) ; end type
type           ty09 ; type (ty08) :: s09(1) ; end type
type           ty10 ; type (ty09) :: s10(1) ; end type
type           ty11 ; type (ty10) :: s11(1) ; end type
type           ty12 ; type (ty11) :: s12(1) ; end type
type           ty13 ; type (ty12) :: s13(1) ; end type
type           ty14 ; type (ty13) :: s14(1) ; end type
type           ty15 ; type (ty14) :: s15(1) ; end type
type           ty16 ; type (ty15) :: s16(1) ; end type
type           ty17 ; type (ty16) :: s17(1) ; end type
type           ty18 ; type (ty17) :: s18(1) ; end type
type           ty19 ; type (ty18) :: s19(1) ; end type
type           ty20 ; type (ty19) :: s20(1) ; end type
type           ty21 ; type (ty20) :: s21(1) ; end type

type (ty21) :: s3

!$omp parallel private(s3)
i=1
!$omp end parallel
end
