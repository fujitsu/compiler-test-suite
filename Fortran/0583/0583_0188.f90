SUBROUTINE EX_SUB()
         TYPE TY
           INTEGER :: JJ
           INTEGER :: ALC
         END TYPE

         TYPE TY1
           INTEGER :: II
           TYPE(TY), ALLOCATABLE:: NODE2
         END TYPE

        TYPE TY3
          INTEGER:: KK
          TYPE(TY1):: TYOBJ
        END TYPE


        TYPE(TY1)::OBJ2
        integer::x
        integer,allocatable::x1
        ALLOCATE(OBJ2%NODE2)
        OBJ2%II = 20
        OBJ2%NODE2%JJ = 4
        OBJ2%NODE2%ALC = 5
        CALL SUB(TY3(6,OBJ2))
        x = fun(TY3(6,OBJ2))
        allocate(x1)
        x1 =50
        if(x.ne.40)print*,"111"
        IF(OBJ2%NODE2%ALC.NE.5)PRINT*,"101", OBJ2%NODE2%ALC
        IF(OBJ2%NODE2%JJ.NE.4)PRINT*,"102", OBJ2%NODE2%JJ
        PRINT*,"PASS"
        CONTAINS
        SUBROUTINE SUB(AAA)
        TYPE(TY3),INTENT(IN) :: AAA
        IF(AAA%TYOBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%TYOBJ%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%TYOBJ%II .NE. 20) PRINT*,"123"
        END SUBROUTINE
        
        function fun(AAA)
        TYPE(TY3):: AAA
        integer::fun
        IF(AAA%TYOBJ%NODE2%JJ .NE. 4) PRINT*,"121"
        IF(AAA%TYOBJ%NODE2%ALC .NE. 5) PRINT*,"122"
        IF(AAA%TYOBJ%II .NE. 20) PRINT*,"123"
        fun = 40
        deallocate(AAA%TYOBJ%NODE2)
        END function
        END SUBROUTINE
CALL EX_SUB()
END
