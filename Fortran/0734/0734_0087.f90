      PROGRAM MAIN

      IMPLICIT NONE

      REAL, DIMENSION(:,:), POINTER             :: PARRAY
      REAL, DIMENSION(:,:), ALLOCATABLE, TARGET :: XARRAY
      INTEGER                                   :: ISMP1,ISMP2,&
     &                                             ILINE1,ILINE2

  interface
      SUBROUTINE SUB_ALLOCATE(PARRAY)
      IMPLICIT NONE

      REAL, DIMENSION(:,:), POINTER             :: PARRAY
      REAL, DIMENSION(:,:), ALLOCATABLE, TARGET :: XARRAY
      END SUBROUTINE
  end interface

      call sub_allocate(parray)

      allocate(xarray(0,0))
      ismp1=lbound(xarray,1)
      ismp2=ubound(xarray,1)
      iline1=lbound(xarray,2)
      iline2=ubound(xarray,2)

      call sub_assign(parray,ismp1,ismp2,iline1,iline2)

      call sub_print(parray,ismp1,ismp2,iline1,iline2)

      print *,'pass'
      STOP
      END
      SUBROUTINE SUB_ALLOCATE(PARRAY)
      IMPLICIT NONE

      REAL, DIMENSION(:,:), POINTER             :: PARRAY
      REAL, DIMENSION(:,:), SAVE,ALLOCATABLE, TARGET :: XARRAY

      allocate( xarray(1:4,1:5) )
      parray => xarray

      if (any((/lbound(parray,1),ubound(parray,1)/)/=(/1,4/)))write(6,*) "NG"
      if (any((/lbound(parray,2),ubound(parray,2)/)/=(/1,5/)))write(6,*) "NG"

      RETURN
      END

      SUBROUTINE SUB_ASSIGN(XARRAY,ISMP1,ISMP2,ILINE1,ILINE2)

      IMPLICIT NONE

      INTEGER                                     :: ISMP1,ISMP2,&
     &                                               ILINE1,ILINE2
      REAL, DIMENSION(ISMP1:ISMP2,ILINE1:ILINE2)  :: XARRAY

      INTEGER                                     :: ISMP,ILINE

      do ismp=ismp1,ismp2
         do iline=iline1,iline2
            xarray(ismp,iline) = ismp+10*iline
         end do
      end do

      RETURN
      END

      SUBROUTINE SUB_PRINT(XARRAY,ISMP1,ISMP2,ILINE1,ILINE2)
      IMPLICIT NONE

      INTEGER                                     :: ISMP1,ISMP2,&
     &                                               ILINE1,ILINE2
      REAL, DIMENSION(ISMP1:ISMP2,ILINE1:ILINE2)  :: XARRAY

      INTEGER                                     :: ISMP,ILINE

      do iline=iline1,iline2
      end do

      RETURN
      END
