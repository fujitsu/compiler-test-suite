INTEGER, PARAMETER :: ID_CHART  = 40001
INTEGER, PARAMETER :: ID_GREY   = 40002
INTEGER, PARAMETER :: ID_EXIT   = 40003
INTEGER, PARAMETER :: MenuSelect= 50003
TYPE X
 INTEGER VALUE1
END TYPE
TYPE(X)::MESSAGE
integer k
ITYPE=MenuSelect
MESSAGE%VALUE1=ID_CHART; CALL s1(MESSAGE,IPICTURE)
if (IPICTURE/=1)write(6,*) "NG"
if (k/=3)write(6,*) "NG"
MESSAGE%VALUE1=ID_GREY ; CALL s1(MESSAGE,IPICTURE);if (IPICTURE/=2)write(6,*) "NG";if (k/=3)write(6,*) "NG"
IPICTURE = -1
MESSAGE%VALUE1=ID_EXIT ; CALL s1(MESSAGE,IPICTURE);if (IPICTURE/=-1)write(6,*) "NG";if (k/=1)write(6,*) "NG"
IPICTURE = -2
MESSAGE%VALUE1=4000    ; CALL s1(MESSAGE,IPICTURE);if (IPICTURE/=-2)write(6,*) "NG";if (k/=3)write(6,*) "NG"
print *,'pass'
contains
subroutine s1(MESSAGE,IPICTURE)
TYPE(X)::MESSAGE
do k=1,2
SELECT CASE (ITYPE)
  CASE (MenuSelect)
    SELECT CASE (MESSAGE%VALUE1)
      CASE (ID_CHART)
        IPICTURE = 1
      CASE (ID_GREY)
        IPICTURE = 2
      CASE (ID_EXIT)
        EXIT
    END SELECT
END SELECT
end do
end subroutine
end