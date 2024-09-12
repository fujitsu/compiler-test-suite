MODULE mod1
IMPLICIT NONE

TYPE type1
  INTEGER :: hh=1
  CONTAINS
  FINAL::des1_scalar,des1_ele
END TYPE

TYPE type2
  INTEGER :: ii=2
  TYPE(type1),POINTER:: cmp1_type1
  TYPE(type1),ALLOCATABLE:: cmp2_type1
  TYPE(type1):: cmp3_type1(2)
  CONTAINS
  FINAL::des2_scalar,des2_ele
END TYPE


TYPE type3
  INTEGER :: jj=3
  TYPE(type2) ::cmp1_type2(2)
  TYPE(type2) ::cmp3_type2
  CONTAINS
  FINAL::des3
END TYPE


TYPE,EXTENDS(type3)::type4
  INTEGER :: kk=4
  CONTAINS
  FINAL::des4
END TYPE

TYPE type5
  CLASS(*),ALLOCATABLE:: cmp_type4
END TYPE


CONTAINS
SUBROUTINE des1_scalar(dmy)
  TYPE(type1),INTENT(INOUT)::dmy
  PRINT*,'des1_scalar destructor called'
  PRINT*,dmy%hh
END SUBROUTINE

SUBROUTINE des1_ele(dmy)
  TYPE(type1),INTENT(INOUT)::dmy(:)
  write(1900,*)dmy%hh
END SUBROUTINE

SUBROUTINE des2_scalar(dmy)
  TYPE(type2),INTENT(INOUT)::dmy
  write(2,*)dmy%ii
END SUBROUTINE

SUBROUTINE des2_ele(dmy)
  TYPE(type2),INTENT(INOUT)::dmy(:)
  write(800,*)dmy%ii
END SUBROUTINE

SUBROUTINE des3(dmy)
  TYPE(type3),INTENT(INOUT)::dmy
  write(300,*)dmy%jj
END SUBROUTINE

SUBROUTINE des4(dmy)
  TYPE(type4),INTENT(INOUT)::dmy
  write(4,*)dmy%kk
END SUBROUTINE

END MODULE 



PROGRAM MAIN
USE mod1
IMPLICIT NONE
integer::k,k1,k2
TYPE(type1),TARGET::tar_ty1
CLASS(type5),ALLOCATABLE :: type5_obj1
TYPE(type4)::local
ALLOCATE(type5_obj1)
local%cmp1_type2(1)%cmp1_type1=>tar_ty1
local%cmp1_type2(2)%cmp1_type1=>tar_ty1
ALLOCATE(local%cmp1_type2(1)%cmp2_type1)
ALLOCATE(local%cmp1_type2(2)%cmp2_type1)
local%jj=300
local%cmp1_type2(1)%ii=800
local%cmp1_type2(2)%ii=700
local%cmp1_type2(1)%cmp1_type1%hh=200
local%cmp1_type2(2)%cmp1_type1%hh=100
local%cmp1_type2(1)%cmp2_type1%hh=600
local%cmp1_type2(2)%cmp2_type1%hh=500
local%cmp1_type2(1)%cmp3_type1(1)%hh=1900
local%cmp1_type2(1)%cmp3_type1(2)%hh=1800
local%cmp1_type2(2)%cmp3_type1(1)%hh=1700
local%cmp1_type2(2)%cmp3_type1(2)%hh=1600
ALLOCATE(type5_obj1%cmp_type4,SOURCE=local)
if(local%jj/=300) print *,30001
if(local%cmp1_type2(1)%ii/=800) print *,30001
if(local%cmp1_type2(2)%ii/=700) print *,30002
if(local%cmp1_type2(1)%cmp1_type1%hh/=100) print *,30003,local%cmp1_type2(1)%cmp1_type1%hh
if(local%cmp1_type2(2)%cmp1_type1%hh/=100) print *,30004
if(local%cmp1_type2(1)%cmp2_type1%hh/=600) print *,30005
if(local%cmp1_type2(2)%cmp2_type1%hh/=500) print *,30006
if(local%cmp1_type2(1)%cmp3_type1(1)%hh/=1900) print *,300017
if(local%cmp1_type2(1)%cmp3_type1(2)%hh/=1800) print *,30008
if(local%cmp1_type2(2)%cmp3_type1(1)%hh/=1700) print *,300019
if(local%cmp1_type2(2)%cmp3_type1(2)%hh/=1600) print *,300010

DEALLOCATE(type5_obj1%cmp_type4)
rewind 2
read(2,*)k
if (k/=2)print *,1009
rewind 1900
read(1900,*)k1,k2
if (k1/=1900)print *,1005
if (k2/=1800)print *,1006
read(1900,*)k1,k2
if (k1/=1700)print *,1007
if (k2/=1600)print *,1008
read(1900,*)k1,k2
if (k1/=1)print *,1017
if (k2/=1)print *,1018
rewind 800
read(800,*)k1,k2
if (k1/=800)print *,1003
if (k2/=700)print *,1004
rewind 300
read(300,*)k
if (k/=300)print *,1002
rewind 4
read(4,*)k
if (k/=4)print *,1001
print *,'pass'
END
