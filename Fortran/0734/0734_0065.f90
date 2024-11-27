MODULE Module1

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub1(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub1

END MODULE Module1
MODULE Module2

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub2(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub2

END MODULE Module2
MODULE Module3

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub3(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub3

END MODULE Module3
MODULE Module4

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub4(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub4

END MODULE Module4
MODULE Module5

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub5(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub5

END MODULE Module5
MODULE Module7

USE Module5, ONLY : ModSub5
USE Module1, ONLY : ModSub1
USE Module4, ONLY : ModSub4
USE Module3, ONLY : ModSub3
USE Module2, ONLY : ModSub2

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub7(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub5(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub2(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub7

END MODULE Module7
MODULE Module8

USE Module4, ONLY : ModSub4
USE Module2, ONLY : ModSub2
USE Module3, ONLY : ModSub3
USE Module5, ONLY : ModSub5
USE Module1, ONLY : ModSub1

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub8(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub4(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub1(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub8

END MODULE Module8
MODULE Module6

USE Module1, ONLY : ModSub1
USE Module3, ONLY : ModSub3
USE Module2, ONLY : ModSub2
USE Module5, ONLY : ModSub5
USE Module4, ONLY : ModSub4

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub6(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub1(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub4(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub6

END MODULE Module6
MODULE Module9

USE Module8, ONLY : ModSub8
USE Module1, ONLY : ModSub1
USE Module5, ONLY : ModSub5
USE Module2, ONLY : ModSub2
USE Module7, ONLY : ModSub7
USE Module4, ONLY : ModSub4

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub9(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub8(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub4(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub9

END MODULE Module9
MODULE Module10

USE Module9, ONLY : ModSub9
USE Module6, ONLY : ModSub6
USE Module4, ONLY : ModSub4
USE Module3, ONLY : ModSub3
USE Module7, ONLY : ModSub7
USE Module5, ONLY : ModSub5
USE Module1, ONLY : ModSub1
USE Module2, ONLY : ModSub2
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub10(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub9(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub10

END MODULE Module10
MODULE Module11

USE Module10, ONLY : ModSub10

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub11(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub10(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub11

END MODULE Module11
MODULE Module12

USE Module11, ONLY : ModSub11

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub12(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub11(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub12

END MODULE Module12
MODULE Module13

USE Module11, ONLY : ModSub11
USE Module5, ONLY : ModSub5
USE Module2, ONLY : ModSub2

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub13(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub11(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub2(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub13

END MODULE Module13
MODULE Module14

USE Module13, ONLY : ModSub13
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub14(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub13(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub14

END MODULE Module14
MODULE Module16

USE Module12, ONLY : ModSub12
USE Module5, ONLY : ModSub5
USE Module1, ONLY : ModSub1
USE Module11, ONLY : ModSub11
USE Module10, ONLY : ModSub10
USE Module2, ONLY : ModSub2
USE Module6, ONLY : ModSub6
USE Module4, ONLY : ModSub4

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub16(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub12(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub4(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub16

END MODULE Module16
MODULE Module17

USE Module14, ONLY : ModSub14
USE Module10, ONLY : ModSub10
USE Module2, ONLY : ModSub2
USE Module16, ONLY : ModSub16
USE Module3, ONLY : ModSub3
USE Module5, ONLY : ModSub5
USE Module11, ONLY : ModSub11
USE Module6, ONLY : ModSub6
USE Module9, ONLY : ModSub9

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub17(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub14(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub9(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub17

END MODULE Module17
MODULE Module18

USE Module17, ONLY : ModSub17
USE Module13, ONLY : ModSub13
USE Module9, ONLY : ModSub9
USE Module2, ONLY : ModSub2
USE Module12, ONLY : ModSub12

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub18(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub17(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub9(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub12(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub18

END MODULE Module18
MODULE Module19

USE Module17, ONLY : ModSub17
USE Module6, ONLY : ModSub6
USE Module4, ONLY : ModSub4
USE Module7, ONLY : ModSub7
USE Module11, ONLY : ModSub11
USE Module1, ONLY : ModSub1
USE Module3, ONLY : ModSub3
USE Module13, ONLY : ModSub13
USE Module14, ONLY : ModSub14

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub19(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub17(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub14(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub19

END MODULE Module19
MODULE Module22

USE Module18, ONLY : ModSub18
USE Module19, ONLY : ModSub19

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub22(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub18(answer,arr)
CALL ModSub19(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub22

END MODULE Module22
MODULE Module23

USE Module22, ONLY : ModSub22
USE Module6, ONLY : ModSub6
USE Module17, ONLY : ModSub17
USE Module7, ONLY : ModSub7
USE Module5, ONLY : ModSub5
USE Module10, ONLY : ModSub10
USE Module1, ONLY : ModSub1
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub23(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub22(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub23

END MODULE Module23
MODULE Module24

USE Module23, ONLY : ModSub23
USE Module14, ONLY : ModSub14
USE Module11, ONLY : ModSub11
USE Module22, ONLY : ModSub22
USE Module16, ONLY : ModSub16

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub24(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub23(answer,arr)
CALL ModSub14(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub16(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub24

END MODULE Module24
MODULE Module15

USE Module12, ONLY : ModSub12
USE Module10, ONLY : ModSub10

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub15(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub12(answer,arr)
CALL ModSub10(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub15

END MODULE Module15
MODULE Module25

USE Module24, ONLY : ModSub24
USE Module14, ONLY : ModSub14

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub25(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub24(answer,arr)
CALL ModSub14(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub25

END MODULE Module25
MODULE Module20

USE Module17, ONLY : ModSub17
USE Module7, ONLY : ModSub7
USE Module5, ONLY : ModSub5
USE Module3, ONLY : ModSub3
USE Module16, ONLY : ModSub16
USE Module4, ONLY : ModSub4
USE Module10, ONLY : ModSub10

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub20(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub17(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub10(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub20

END MODULE Module20
MODULE Module26

USE Module25, ONLY : ModSub25
USE Module6, ONLY : ModSub6
USE Module24, ONLY : ModSub24
USE Module16, ONLY : ModSub16
USE Module18, ONLY : ModSub18
USE Module15, ONLY : ModSub15
USE Module10, ONLY : ModSub10
USE Module19, ONLY : ModSub19

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub26(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub25(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub18(answer,arr)
CALL ModSub15(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub19(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub26

END MODULE Module26
MODULE Module27

USE Module26, ONLY : ModSub26
USE Module24, ONLY : ModSub24
USE Module20, ONLY : ModSub20

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub27(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub26(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub20(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub27

END MODULE Module27
MODULE Module31

USE Module27, ONLY : ModSub27
USE Module25, ONLY : ModSub25

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub31(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub27(answer,arr)
CALL ModSub25(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub31

END MODULE Module31
MODULE Module21

USE Module17, ONLY : ModSub17

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub21(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub17(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub21

END MODULE Module21
MODULE Module32

USE Module31, ONLY : ModSub31

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub32(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub31(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub32

END MODULE Module32
MODULE Module28

USE Module27, ONLY : ModSub27
USE Module16, ONLY : ModSub16
USE Module5, ONLY : ModSub5
USE Module23, ONLY : ModSub23
USE Module10, ONLY : ModSub10
USE Module21, ONLY : ModSub21
USE Module17, ONLY : ModSub17
USE Module1, ONLY : ModSub1
USE Module22, ONLY : ModSub22

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub28(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub27(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub23(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub22(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub28

END MODULE Module28
MODULE Module34

USE Module32, ONLY : ModSub32

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub34(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub32(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub34

END MODULE Module34
MODULE Module35

USE Module34, ONLY : ModSub34
USE Module22, ONLY : ModSub22
USE Module31, ONLY : ModSub31
USE Module28, ONLY : ModSub28
USE Module20, ONLY : ModSub20

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub35(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub34(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub31(answer,arr)
CALL ModSub28(answer,arr)
CALL ModSub20(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub35

END MODULE Module35
MODULE Module38

USE Module35, ONLY : ModSub35

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub38(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub35(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub38

END MODULE Module38
MODULE Module41

USE Module38, ONLY : ModSub38
USE Module7, ONLY : ModSub7
USE Module34, ONLY : ModSub34
USE Module31, ONLY : ModSub31
USE Module11, ONLY : ModSub11
USE Module4, ONLY : ModSub4
USE Module12, ONLY : ModSub12
USE Module23, ONLY : ModSub23
USE Module8, ONLY : ModSub8
USE Module16, ONLY : ModSub16

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub41(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub38(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub34(answer,arr)
CALL ModSub31(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub12(answer,arr)
CALL ModSub23(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub16(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub41

END MODULE Module41
MODULE Module43

USE Module38, ONLY : ModSub38
USE Module24, ONLY : ModSub24

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub43(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub38(answer,arr)
CALL ModSub24(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub43

END MODULE Module43
MODULE Module44

USE Module41, ONLY : ModSub41

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub44(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub41(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub44

END MODULE Module44
MODULE Module45

USE Module44, ONLY : ModSub44
USE Module43, ONLY : ModSub43

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub45(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub44(answer,arr)
CALL ModSub43(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub45

END MODULE Module45
MODULE Module48

USE Module45, ONLY : ModSub45
USE Module32, ONLY : ModSub32

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub48(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub45(answer,arr)
CALL ModSub32(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub48

END MODULE Module48
MODULE Module52

USE Module48, ONLY : ModSub48

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub52(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub48(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub52

END MODULE Module52
MODULE Module54

USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub54(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub54

END MODULE Module54
MODULE Module56

USE Module54, ONLY : ModSub54
USE Module44, ONLY : ModSub44

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub56(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub54(answer,arr)
CALL ModSub44(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub56

END MODULE Module56
MODULE Module33

USE Module31, ONLY : ModSub31

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub33(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub31(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub33

END MODULE Module33
MODULE Module46

USE Module45, ONLY : ModSub45
USE Module17, ONLY : ModSub17
USE Module6, ONLY : ModSub6
USE Module11, ONLY : ModSub11
USE Module7, ONLY : ModSub7
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub46(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub45(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub46

END MODULE Module46
MODULE Module57

USE Module56, ONLY : ModSub56
USE Module24, ONLY : ModSub24
USE Module38, ONLY : ModSub38
USE Module6, ONLY : ModSub6
USE Module41, ONLY : ModSub41
USE Module13, ONLY : ModSub13
USE Module52, ONLY : ModSub52
USE Module16, ONLY : ModSub16
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub57(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub56(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub38(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub41(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub52(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub57

END MODULE Module57
MODULE Module30

USE Module27, ONLY : ModSub27
USE Module23, ONLY : ModSub23
USE Module22, ONLY : ModSub22
USE Module19, ONLY : ModSub19

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub30(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub27(answer,arr)
CALL ModSub23(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub19(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub30

END MODULE Module30
MODULE Module36

USE Module34, ONLY : ModSub34
USE Module28, ONLY : ModSub28

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub36(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub34(answer,arr)
CALL ModSub28(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub36

END MODULE Module36
MODULE Module37

USE Module34, ONLY : ModSub34

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub37(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub34(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub37

END MODULE Module37
MODULE Module50

USE Module45, ONLY : ModSub45
USE Module33, ONLY : ModSub33

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub50(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub45(answer,arr)
CALL ModSub33(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub50

END MODULE Module50
MODULE Module58

USE Module56, ONLY : ModSub56
USE Module46, ONLY : ModSub46
USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub58(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub56(answer,arr)
CALL ModSub46(answer,arr)
CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub58

END MODULE Module58
MODULE Module63

USE Module57, ONLY : ModSub57

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub63(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub57(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub63

END MODULE Module63
MODULE Module40

USE Module38, ONLY : ModSub38
USE Module13, ONLY : ModSub13
USE Module24, ONLY : ModSub24
USE Module10, ONLY : ModSub10
USE Module11, ONLY : ModSub11
USE Module21, ONLY : ModSub21
USE Module14, ONLY : ModSub14
USE Module36, ONLY : ModSub36

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub40(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub38(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub10(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub14(answer,arr)
CALL ModSub36(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub40

END MODULE Module40
MODULE Module51

USE Module46, ONLY : ModSub46
USE Module37, ONLY : ModSub37

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub51(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub46(answer,arr)
CALL ModSub37(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub51

END MODULE Module51
MODULE Module59

USE Module58, ONLY : ModSub58
USE Module30, ONLY : ModSub30
USE Module36, ONLY : ModSub36
USE Module18, ONLY : ModSub18
USE Module8, ONLY : ModSub8

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub59(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub58(answer,arr)
CALL ModSub30(answer,arr)
CALL ModSub36(answer,arr)
CALL ModSub18(answer,arr)
CALL ModSub8(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub59

END MODULE Module59
MODULE Module64

USE Module63, ONLY : ModSub63
USE Module34, ONLY : ModSub34
USE Module50, ONLY : ModSub50
USE Module3, ONLY : ModSub3
USE Module32, ONLY : ModSub32
USE Module4, ONLY : ModSub4
USE Module43, ONLY : ModSub43
USE Module13, ONLY : ModSub13

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub64(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub63(answer,arr)
CALL ModSub34(answer,arr)
CALL ModSub50(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub32(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub43(answer,arr)
CALL ModSub13(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub64

END MODULE Module64
MODULE Module53

USE Module51, ONLY : ModSub51

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub53(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub51(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub53

END MODULE Module53
MODULE Module60

USE Module58, ONLY : ModSub58

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub60(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub58(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub60

END MODULE Module60
MODULE Module68

USE Module64, ONLY : ModSub64
USE Module40, ONLY : ModSub40
USE Module44, ONLY : ModSub44
USE Module23, ONLY : ModSub23
USE Module8, ONLY : ModSub8
USE Module12, ONLY : ModSub12
USE Module59, ONLY : ModSub59

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub68(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub64(answer,arr)
CALL ModSub40(answer,arr)
CALL ModSub44(answer,arr)
CALL ModSub23(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub12(answer,arr)
CALL ModSub59(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub68

END MODULE Module68
MODULE Module49

USE Module45, ONLY : ModSub45
USE Module6, ONLY : ModSub6
USE Module21, ONLY : ModSub21

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub49(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub45(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub21(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub49

END MODULE Module49
MODULE Module55

USE Module51, ONLY : ModSub51
USE Module37, ONLY : ModSub37

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub55(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub51(answer,arr)
CALL ModSub37(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub55

END MODULE Module55
MODULE Module70

USE Module68, ONLY : ModSub68
USE Module43, ONLY : ModSub43
USE Module5, ONLY : ModSub5
USE Module25, ONLY : ModSub25
USE Module11, ONLY : ModSub11
USE Module16, ONLY : ModSub16
USE Module53, ONLY : ModSub53
USE Module8, ONLY : ModSub8
USE Module60, ONLY : ModSub60
USE Module44, ONLY : ModSub44

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub70(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub68(answer,arr)
CALL ModSub43(answer,arr)
CALL ModSub5(answer,arr)
CALL ModSub25(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub53(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub60(answer,arr)
CALL ModSub44(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub70

END MODULE Module70
MODULE Module62

USE Module57, ONLY : ModSub57
USE Module49, ONLY : ModSub49
USE Module55, ONLY : ModSub55
USE Module16, ONLY : ModSub16
USE Module50, ONLY : ModSub50
USE Module14, ONLY : ModSub14
USE Module45, ONLY : ModSub45
USE Module19, ONLY : ModSub19
USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub62(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub57(answer,arr)
CALL ModSub49(answer,arr)
CALL ModSub55(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub50(answer,arr)
CALL ModSub14(answer,arr)
CALL ModSub45(answer,arr)
CALL ModSub19(answer,arr)
CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub62

END MODULE Module62
MODULE Module72

USE Module70, ONLY : ModSub70
USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub72(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub70(answer,arr)
CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub72

END MODULE Module72
MODULE Module61

USE Module58, ONLY : ModSub58

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub61(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub58(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub61

END MODULE Module61
MODULE Module65

USE Module64, ONLY : ModSub64

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub65(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub64(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub65

END MODULE Module65
MODULE Module75

USE Module72, ONLY : ModSub72
USE Module62, ONLY : ModSub62

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub75(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub72(answer,arr)
CALL ModSub62(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub75

END MODULE Module75
MODULE Module78

USE Module75, ONLY : ModSub75
USE Module48, ONLY : ModSub48
USE Module14, ONLY : ModSub14
USE Module11, ONLY : ModSub11
USE Module17, ONLY : ModSub17
USE Module65, ONLY : ModSub65
USE Module61, ONLY : ModSub61
USE Module31, ONLY : ModSub31
USE Module15, ONLY : ModSub15
USE Module20, ONLY : ModSub20

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub78(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub75(answer,arr)
CALL ModSub48(answer,arr)
CALL ModSub14(answer,arr)
CALL ModSub11(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub65(answer,arr)
CALL ModSub61(answer,arr)
CALL ModSub31(answer,arr)
CALL ModSub15(answer,arr)
CALL ModSub20(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub78

END MODULE Module78
MODULE Module29

USE Module27, ONLY : ModSub27

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub29(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub27(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub29

END MODULE Module29
MODULE Module71

USE Module70, ONLY : ModSub70

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub71(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub70(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub71

END MODULE Module71
MODULE Module79

USE Module78, ONLY : ModSub78
USE Module65, ONLY : ModSub65

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub79(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub78(answer,arr)
CALL ModSub65(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub79

END MODULE Module79
MODULE Module66

USE Module64, ONLY : ModSub64
USE Module29, ONLY : ModSub29

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub66(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub64(answer,arr)
CALL ModSub29(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub66

END MODULE Module66
MODULE Module76

USE Module71, ONLY : ModSub71

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub76(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub71(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub76

END MODULE Module76
MODULE Module77

USE Module71, ONLY : ModSub71
USE Module28, ONLY : ModSub28

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub77(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub71(answer,arr)
CALL ModSub28(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub77

END MODULE Module77
MODULE Module83

USE Module79, ONLY : ModSub79
USE Module21, ONLY : ModSub21
USE Module8, ONLY : ModSub8
USE Module49, ONLY : ModSub49
USE Module51, ONLY : ModSub51

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub83(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub79(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub49(answer,arr)
CALL ModSub51(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub83

END MODULE Module83
MODULE Module85

USE Module83, ONLY : ModSub83
USE Module17, ONLY : ModSub17
USE Module76, ONLY : ModSub76
USE Module77, ONLY : ModSub77
USE Module71, ONLY : ModSub71
USE Module66, ONLY : ModSub66
USE Module20, ONLY : ModSub20

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub85(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub83(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub76(answer,arr)
CALL ModSub77(answer,arr)
CALL ModSub71(answer,arr)
CALL ModSub66(answer,arr)
CALL ModSub20(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub85

END MODULE Module85
MODULE Module87

USE Module85, ONLY : ModSub85

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub87(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub85(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub87

END MODULE Module87
MODULE Module89

USE Module87, ONLY : ModSub87

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub89(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub87(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub89

END MODULE Module89
MODULE Module90

USE Module89, ONLY : ModSub89

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub90(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub89(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub90

END MODULE Module90
MODULE Module92

USE Module90, ONLY : ModSub90

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub92(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub90(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub92

END MODULE Module92
MODULE Module93

USE Module92, ONLY : ModSub92
USE Module87, ONLY : ModSub87
USE Module48, ONLY : ModSub48

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub93(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub92(answer,arr)
CALL ModSub87(answer,arr)
CALL ModSub48(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub93

END MODULE Module93
MODULE Module96

USE Module93, ONLY : ModSub93

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub96(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub93(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub96

END MODULE Module96
MODULE Module97

USE Module96, ONLY : ModSub96

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub97(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub96(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub97

END MODULE Module97
MODULE Module98

USE Module97, ONLY : ModSub97
USE Module29, ONLY : ModSub29

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub98(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub97(answer,arr)
CALL ModSub29(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub98

END MODULE Module98
MODULE Module67

USE Module64, ONLY : ModSub64
USE Module56, ONLY : ModSub56
USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub67(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub64(answer,arr)
CALL ModSub56(answer,arr)
CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub67

END MODULE Module67
MODULE Module69

USE Module64, ONLY : ModSub64
USE Module17, ONLY : ModSub17
USE Module3, ONLY : ModSub3
USE Module21, ONLY : ModSub21
USE Module22, ONLY : ModSub22
USE Module44, ONLY : ModSub44
USE Module32, ONLY : ModSub32
USE Module33, ONLY : ModSub33
USE Module63, ONLY : ModSub63

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub69(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub64(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub44(answer,arr)
CALL ModSub32(answer,arr)
CALL ModSub33(answer,arr)
CALL ModSub63(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub69

END MODULE Module69
MODULE Module94

USE Module92, ONLY : ModSub92
USE Module8, ONLY : ModSub8
USE Module90, ONLY : ModSub90
USE Module72, ONLY : ModSub72
USE Module2, ONLY : ModSub2
USE Module3, ONLY : ModSub3

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub94(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub92(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub90(answer,arr)
CALL ModSub72(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub3(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub94

END MODULE Module94
MODULE Module99

USE Module98, ONLY : ModSub98

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub99(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub98(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub99

END MODULE Module99
MODULE Module101

USE Module99, ONLY : ModSub99
USE Module19, ONLY : ModSub19
USE Module87, ONLY : ModSub87
USE Module46, ONLY : ModSub46
USE Module60, ONLY : ModSub60
USE Module93, ONLY : ModSub93
USE Module67, ONLY : ModSub67
USE Module94, ONLY : ModSub94

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub101(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub99(answer,arr)
CALL ModSub19(answer,arr)
CALL ModSub87(answer,arr)
CALL ModSub46(answer,arr)
CALL ModSub60(answer,arr)
CALL ModSub93(answer,arr)
CALL ModSub67(answer,arr)
CALL ModSub94(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub101

END MODULE Module101
MODULE Module74

USE Module71, ONLY : ModSub71
USE Module70, ONLY : ModSub70

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub74(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub71(answer,arr)
CALL ModSub70(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub74

END MODULE Module74
MODULE Module88

USE Module85, ONLY : ModSub85
USE Module64, ONLY : ModSub64
USE Module51, ONLY : ModSub51
USE Module57, ONLY : ModSub57
USE Module6, ONLY : ModSub6
USE Module60, ONLY : ModSub60
USE Module69, ONLY : ModSub69

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub88(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub85(answer,arr)
CALL ModSub64(answer,arr)
CALL ModSub51(answer,arr)
CALL ModSub57(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub60(answer,arr)
CALL ModSub69(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub88

END MODULE Module88
MODULE Module104

USE Module101, ONLY : ModSub101
USE Module25, ONLY : ModSub25
USE Module87, ONLY : ModSub87
USE Module88, ONLY : ModSub88
USE Module79, ONLY : ModSub79
USE Module74, ONLY : ModSub74

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub104(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub101(answer,arr)
CALL ModSub25(answer,arr)
CALL ModSub87(answer,arr)
CALL ModSub88(answer,arr)
CALL ModSub79(answer,arr)
CALL ModSub74(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub104

END MODULE Module104
MODULE Module106

USE Module104, ONLY : ModSub104
USE Module71, ONLY : ModSub71
USE Module56, ONLY : ModSub56

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub106(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub104(answer,arr)
CALL ModSub71(answer,arr)
CALL ModSub56(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub106

END MODULE Module106
MODULE Module42

USE Module38, ONLY : ModSub38

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub42(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub38(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub42

END MODULE Module42
MODULE Module112

USE Module106, ONLY : ModSub106
USE Module19, ONLY : ModSub19
USE Module42, ONLY : ModSub42
USE Module78, ONLY : ModSub78
USE Module77, ONLY : ModSub77
USE Module16, ONLY : ModSub16
USE Module104, ONLY : ModSub104
USE Module23, ONLY : ModSub23

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub112(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub106(answer,arr)
CALL ModSub19(answer,arr)
CALL ModSub42(answer,arr)
CALL ModSub78(answer,arr)
CALL ModSub77(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub104(answer,arr)
CALL ModSub23(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub112

END MODULE Module112
MODULE Module47

USE Module45, ONLY : ModSub45
USE Module42, ONLY : ModSub42
USE Module2, ONLY : ModSub2

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub47(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub45(answer,arr)
CALL ModSub42(answer,arr)
CALL ModSub2(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub47

END MODULE Module47
MODULE Module100

USE Module99, ONLY : ModSub99
USE Module25, ONLY : ModSub25
USE Module6, ONLY : ModSub6
USE Module78, ONLY : ModSub78

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub100(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub99(answer,arr)
CALL ModSub25(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub78(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub100

END MODULE Module100
MODULE Module116

USE Module112, ONLY : ModSub112

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub116(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub112(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub116

END MODULE Module116
MODULE Module117

USE Module112, ONLY : ModSub112
USE Module52, ONLY : ModSub52

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub117(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub112(answer,arr)
CALL ModSub52(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub117

END MODULE Module117
MODULE Module73

USE Module72, ONLY : ModSub72
USE Module23, ONLY : ModSub23

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub73(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub72(answer,arr)
CALL ModSub23(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub73

END MODULE Module73
MODULE Module84

USE Module83, ONLY : ModSub83
USE Module71, ONLY : ModSub71
USE Module47, ONLY : ModSub47

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub84(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub83(answer,arr)
CALL ModSub71(answer,arr)
CALL ModSub47(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub84

END MODULE Module84
MODULE Module102

USE Module100, ONLY : ModSub100
USE Module22, ONLY : ModSub22
USE Module84, ONLY : ModSub84
USE Module21, ONLY : ModSub21
USE Module73, ONLY : ModSub73
USE Module71, ONLY : ModSub71
USE Module13, ONLY : ModSub13

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub102(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub100(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub84(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub73(answer,arr)
CALL ModSub71(answer,arr)
CALL ModSub13(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub102

END MODULE Module102
MODULE Module118

USE Module117, ONLY : ModSub117
USE Module116, ONLY : ModSub116

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub118(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub117(answer,arr)
CALL ModSub116(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub118

END MODULE Module118
MODULE Module108

USE Module102, ONLY : ModSub102

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub108(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub102(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub108

END MODULE Module108
MODULE Module113

USE Module106, ONLY : ModSub106
USE Module54, ONLY : ModSub54

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub113(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub106(answer,arr)
CALL ModSub54(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub113

END MODULE Module113
MODULE Module119

USE Module118, ONLY : ModSub118
USE Module89, ONLY : ModSub89
USE Module94, ONLY : ModSub94
USE Module87, ONLY : ModSub87
USE Module22, ONLY : ModSub22
USE Module47, ONLY : ModSub47
USE Module58, ONLY : ModSub58
USE Module75, ONLY : ModSub75
USE Module68, ONLY : ModSub68

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub119(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub118(answer,arr)
CALL ModSub89(answer,arr)
CALL ModSub94(answer,arr)
CALL ModSub87(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub47(answer,arr)
CALL ModSub58(answer,arr)
CALL ModSub75(answer,arr)
CALL ModSub68(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub119

END MODULE Module119
MODULE Module120

USE Module118, ONLY : ModSub118

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub120(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub118(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub120

END MODULE Module120
MODULE Module39

USE Module38, ONLY : ModSub38
USE Module2, ONLY : ModSub2
USE Module12, ONLY : ModSub12
USE Module4, ONLY : ModSub4
USE Module32, ONLY : ModSub32
USE Module9, ONLY : ModSub9
USE Module29, ONLY : ModSub29
USE Module1, ONLY : ModSub1
USE Module34, ONLY : ModSub34

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub39(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub38(answer,arr)
CALL ModSub2(answer,arr)
CALL ModSub12(answer,arr)
CALL ModSub4(answer,arr)
CALL ModSub32(answer,arr)
CALL ModSub9(answer,arr)
CALL ModSub29(answer,arr)
CALL ModSub1(answer,arr)
CALL ModSub34(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub39

END MODULE Module39
MODULE Module81

USE Module78, ONLY : ModSub78

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub81(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub78(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub81

END MODULE Module81
MODULE Module82

USE Module78, ONLY : ModSub78
USE Module1, ONLY : ModSub1

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub82(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub78(answer,arr)
CALL ModSub1(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub82

END MODULE Module82
MODULE Module86

USE Module85, ONLY : ModSub85
USE Module40, ONLY : ModSub40
USE Module84, ONLY : ModSub84
USE Module13, ONLY : ModSub13
USE Module79, ONLY : ModSub79
USE Module77, ONLY : ModSub77
USE Module7, ONLY : ModSub7
USE Module36, ONLY : ModSub36
USE Module74, ONLY : ModSub74

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub86(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub85(answer,arr)
CALL ModSub40(answer,arr)
CALL ModSub84(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub79(answer,arr)
CALL ModSub77(answer,arr)
CALL ModSub7(answer,arr)
CALL ModSub36(answer,arr)
CALL ModSub74(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub86

END MODULE Module86
MODULE Module91

USE Module90, ONLY : ModSub90
USE Module15, ONLY : ModSub15
USE Module16, ONLY : ModSub16
USE Module48, ONLY : ModSub48
USE Module6, ONLY : ModSub6
USE Module55, ONLY : ModSub55
USE Module17, ONLY : ModSub17
USE Module56, ONLY : ModSub56
USE Module87, ONLY : ModSub87

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub91(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub90(answer,arr)
CALL ModSub15(answer,arr)
CALL ModSub16(answer,arr)
CALL ModSub48(answer,arr)
CALL ModSub6(answer,arr)
CALL ModSub55(answer,arr)
CALL ModSub17(answer,arr)
CALL ModSub56(answer,arr)
CALL ModSub87(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub91

END MODULE Module91
PROGRAM MAIN

USE Module119, ONLY : ModSub119
USE Module120, ONLY : ModSub120

IMPLICIT NONE

CHARACTER (LEN=15) :: answer='Welcome in mod '
INTEGER, DIMENSION(2) :: arr=1
if (any(arr==1)) then
  print *,'pass'
  stop
endif
CALL ModSub119(answer,arr)
CALL ModSub120(answer,arr)

END PROGRAM MAIN
MODULE Module103

USE Module101, ONLY : ModSub101
USE Module61, ONLY : ModSub61
USE Module30, ONLY : ModSub30
USE Module21, ONLY : ModSub21
USE Module43, ONLY : ModSub43
USE Module22, ONLY : ModSub22
USE Module24, ONLY : ModSub24
USE Module36, ONLY : ModSub36

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub103(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub101(answer,arr)
CALL ModSub61(answer,arr)
CALL ModSub30(answer,arr)
CALL ModSub21(answer,arr)
CALL ModSub43(answer,arr)
CALL ModSub22(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub36(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub103

END MODULE Module103
MODULE Module105

USE Module101, ONLY : ModSub101

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub105(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub101(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub105

END MODULE Module105
MODULE Module107

USE Module104, ONLY : ModSub104
USE Module72, ONLY : ModSub72
USE Module79, ONLY : ModSub79
USE Module24, ONLY : ModSub24
USE Module8, ONLY : ModSub8
USE Module60, ONLY : ModSub60
USE Module13, ONLY : ModSub13
USE Module82, ONLY : ModSub82

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub107(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub104(answer,arr)
CALL ModSub72(answer,arr)
CALL ModSub79(answer,arr)
CALL ModSub24(answer,arr)
CALL ModSub8(answer,arr)
CALL ModSub60(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub82(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub107

END MODULE Module107
MODULE Module109

USE Module104, ONLY : ModSub104
USE Module13, ONLY : ModSub13
USE Module39, ONLY : ModSub39
USE Module86, ONLY : ModSub86
USE Module44, ONLY : ModSub44
USE Module12, ONLY : ModSub12
USE Module69, ONLY : ModSub69

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub109(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub104(answer,arr)
CALL ModSub13(answer,arr)
CALL ModSub39(answer,arr)
CALL ModSub86(answer,arr)
CALL ModSub44(answer,arr)
CALL ModSub12(answer,arr)
CALL ModSub69(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub109

END MODULE Module109
MODULE Module110

USE Module102, ONLY : ModSub102
USE Module81, ONLY : ModSub81

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub110(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub102(answer,arr)
CALL ModSub81(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub110

END MODULE Module110
MODULE Module111

USE Module108, ONLY : ModSub108
USE Module101, ONLY : ModSub101
USE Module3, ONLY : ModSub3
USE Module29, ONLY : ModSub29
USE Module86, ONLY : ModSub86
USE Module82, ONLY : ModSub82
USE Module92, ONLY : ModSub92
USE Module32, ONLY : ModSub32
USE Module13, ONLY : ModSub13

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub111(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub108(answer,arr)
CALL ModSub101(answer,arr)
CALL ModSub3(answer,arr)
CALL ModSub29(answer,arr)
CALL ModSub86(answer,arr)
CALL ModSub82(answer,arr)
CALL ModSub92(answer,arr)
CALL ModSub32(answer,arr)
CALL ModSub13(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub111

END MODULE Module111
MODULE Module114

USE Module113, ONLY : ModSub113

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub114(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub113(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub114

END MODULE Module114
MODULE Module115

USE Module113, ONLY : ModSub113

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub115(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub113(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub115

END MODULE Module115
MODULE Module80

USE Module78, ONLY : ModSub78

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub80(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub78(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub80

END MODULE Module80
MODULE Module95

USE Module91, ONLY : ModSub91
USE Module70, ONLY : ModSub70

IMPLICIT NONE

INTEGER, DIMENSION(2) :: arr=1

CONTAINS

SUBROUTINE ModSub95(answer,tmp_arr)
CHARACTER (LEN=*), INTENT(IN) :: answer   
INTEGER, DIMENSION(2), INTENT(INOUT) :: tmp_arr

arr(:)=arr(:)+DOT_PRODUCT(arr(:),tmp_arr(:))*tmp_arr(:)

CALL ModSub91(answer,arr)
CALL ModSub70(answer,arr)

tmp_arr(:)=arr(:)

END SUBROUTINE ModSub95

END MODULE Module95
