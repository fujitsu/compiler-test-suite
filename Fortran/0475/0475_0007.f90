TYPE POINT
REAL :: X,Y
END TYPE POINT
TYPE, EXTENDS(POINT) :: POINT_3D
REAL :: Z
END TYPE POINT_3D
TYPE, EXTENDS(POINT) :: COLOR_POINT
INTEGER :: COLOR
END TYPE COLOR_POINT
TYPE(POINT_3D), TARGET :: P3
CLASS(POINT), POINTER :: P_OR_C
P_OR_C => P3
SELECT TYPE ( P_OR_C )
CLASS IS ( POINT )
P_OR_C%X=1
END SELECT
print *,'pass'
end
