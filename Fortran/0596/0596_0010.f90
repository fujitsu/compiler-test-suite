         MODULE mod1
         IMPLICIT NONE
         TYPE ty
           INTEGER :: ii=1
           CONTAINS
             FINAL::destructor
         END TYPE

         CONTAINS
        SUBROUTINE destructor(dmy)
          TYPE(ty),INTENT(INOUT)::dmy(:,:,:)
          PRINT*,'assume size destructor called'
          if(dmy(1,1,1)%ii .ne.  1)print*,"101"
          if(dmy(1,1,2)%ii .ne.  1)print*,"102"
        END SUBROUTINE
        END MODULE

        PROGRAM MAIN
        USE mod1
        IMPLICIT NONE
         type tt
        TYPE(ty),ALLOCATABLE :: ty_obj1(:,:,:)
        end type
        TYPE(ty) :: ty_obj2
        TYPE(tt) :: tt_obj
        INTEGER::v(2:3)=(/6,7/)
        ALLOCATE(tt_obj%ty_obj1(2,1,8),SOURCE=ty_obj2)
        tt_obj%ty_obj1(2:,1:,v)=ty_obj2
        END
