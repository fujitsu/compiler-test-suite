module mFIELDS
 implicit none

  TYPE FIELD1
        integer                 :: nx
        integer                 :: x1,x2
        integer                 :: ext
        real,pointer            :: val(:)
  END TYPE FIELD1

  TYPE FIELD2
        integer                 :: nx,ny
        integer                 :: x1,x2,y1,y2
        integer                 :: ext        
        real,pointer            :: val(:,:)
  END TYPE FIELD2        

  TYPE FIELD
        integer                 :: nx,ny,nz
        integer                 :: x1,x2,y1,y2,z1,z2
        integer                 :: ext        
        real,pointer            :: val(:,:,:)
  END TYPE FIELD      

  INTERFACE CreatField
        MODULE PROCEDURE  CreatField1,CreatField2,CreatField3 
  END INTERFACE 

contains

  function     CreatField1(inx,iext) 

   implicit none
    TYPE(FIELD1),pointer        :: CreatField1
    integer,intent(IN)          :: inx
    integer,intent(IN)          :: iext
    allocate (CreatField1)

  end function CreatField1      

  function     CreatField2(inx,iny,iext)

   implicit none
    TYPE(FIELD2),pointer        :: CreatField2
    integer,intent(IN)          :: inx
    integer,intent(IN)          :: iny
    integer,intent(IN)          :: iext
    allocate (CreatField2)

  end function CreatField2 

  function     CreatField3(inx,iny,inz,iext)

   implicit none
    TYPE(FIELD),pointer         :: CreatField3
    integer,intent(IN)          :: inx
    integer,intent(IN)          :: iny
    integer,intent(IN)          :: inz
    integer,intent(IN)          :: iext
    allocate (CreatField3)

  end function CreatField3 

end module mFIELDS
use mFIELDS
print *,'pass'
end
