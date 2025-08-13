MODULE mod1
IMPLICIT NONE
    INTEGER :: a = 2, b = 5, c = 3, counter = 0
TYPE my
  INTEGER(kind=8)::kk=80
  CONTAINS
  FINAL::final_my
END TYPE
    TYPE ty
        INTEGER(kind=8) :: ii = 10
        TYPE(my),allocatable :: alloc
        CONTAINS
           FINAL::dest_2Darr
     END TYPE

     TYPE ty1
        INTEGER :: jj = 20
        TYPE(ty) :: ty_cmp(2, 2)
     END TYPE

    CONTAINS
        SUBROUTINE final_my(dmy)
            TYPE(my), INTENT(INOUT):: dmy
write(23,*)13
        END SUBROUTINE
        SUBROUTINE dest_2Darr(dmy)
            TYPE(ty), INTENT(INOUT):: dmy(:,:)
write(23,*)11
            counter = counter + 1
            IF ( dmy(1,1)%ii .EQ. (100*counter) ) THEN
            ELSE
                PRINT*, counter,' destructor call FAIL ', dmy%ii
            END IF
        END SUBROUTINE
END MODULE

PROGRAM MAIN
    USE mod1
    IMPLICIT NONE
    TYPE(ty1) :: ty1_obj
    ty1_obj%ty_cmp(1, 1)%ii = 100
    ty1_obj%ty_cmp(2, 1)%ii = 100
    ALLOCATE(ty1_obj%ty_cmp(1,1)%alloc)
    ALLOCATE(ty1_obj%ty_cmp(1,2)%alloc)
    ALLOCATE(ty1_obj%ty_cmp(2,1)%alloc)
    ALLOCATE(ty1_obj%ty_cmp(2,2)%alloc)
    CALL Foo(ty1_obj%ty_cmp)
call chk
print *,'pass'
    CONTAINS
        SUBROUTINE Foo( ty_dmy )
            CLASS(ty), INTENT(OUT):: ty_dmy(2:2, 2:3)
            ty_dmy(a, c)%ii = 200
        END SUBROUTINE
END PROGRAM MAIN
subroutine chk
rewind 23
read(23,*) k;if (k/=11) print *,103
read(23,*) k;if (k/=13) print *,101
read(23,*) k;if (k/=13) print *,102
end
