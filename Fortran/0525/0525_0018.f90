MODULE PREC
    INTEGER, PARAMETER :: q =SELECTED_REAL_KIND(10)
end
    USE PREC
print *,'pass'
contains
    subroutine ss
    COMPLEX(q),ALLOCATABLE :: P(:),QQ(:) 
    end 
end
