TYPE TY
 INTEGER,ALLOCATABLE :: II
 TYPE(TY),ALLOCATABLE :: NEXT
END TYPE

TYPE(TY),ALLOCATABLE :: OBJ
TYPE(TY),ALLOCATABLE :: OBJ2

ALLOCATE(OBJ)
ALLOCATE(OBJ%II)
ALLOCATE(OBJ%NEXT)
ALLOCATE(OBJ%NEXT%II)
ALLOCATE(OBJ%NEXT%NEXT)
ALLOCATE(OBJ%NEXT%NEXT%II)
ALLOCATE(OBJ%NEXT%NEXT%NEXT)
ALLOCATE(OBJ%NEXT%NEXT%NEXT%II)

ALLOCATE(OBJ2)
ALLOCATE(OBJ2%II)
ALLOCATE(OBJ2%NEXT)
ALLOCATE(OBJ2%NEXT%II)
ALLOCATE(OBJ2%NEXT%NEXT)
ALLOCATE(OBJ2%NEXT%NEXT%II)
ALLOCATE(OBJ2%NEXT%NEXT%NEXT)
ALLOCATE(OBJ2%NEXT%NEXT%NEXT%II)

OBJ%II = 1
OBJ%NEXT%II = 2
OBJ%NEXT%NEXT%II = 3
OBJ%NEXT%NEXT%NEXT%II = 4

OBJ2%II = 22
OBJ2%NEXT%II = 33
OBJ2%NEXT%NEXT%II = 44
OBJ2%NEXT%NEXT%NEXT%II = 55

OBJ = TY(11,OBJ2)

OBJ2%II = 111
OBJ2%NEXT%II = 222
OBJ2%NEXT%NEXT%II = 333
OBJ2%NEXT%NEXT%NEXT%II = 444

if(OBJ%II .ne. 11) print*,"121"
if(OBJ%NEXT%II .ne. 22) print*,"122", OBJ%NEXT%II
if(OBJ%NEXT%NEXT%II .ne. 33) print*,"123", OBJ%NEXT%NEXT%II
if(OBJ%NEXT%NEXT%NEXT%II .ne. 44) print*,"124", OBJ%NEXT%NEXT%NEXT%II
if(OBJ%NEXT%NEXT%NEXT%NEXT%II .ne. 55) print*,"125", OBJ%NEXT%NEXT%NEXT%NEXT%II
print*,"PASS"
END
