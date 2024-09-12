      call s1
      print *,'pass'
      end
    MODULE SORT
	IMPLICIT NONE
	INTEGER,PARAMETER :: STRING_LENGTH=30
	TYPE ADDRESS
	   CHARACTER(LEN=STRING_LENGTH) :: NAME,STREET,TOWN,STATE*2
	   INTEGER			:: ZIP_CODE
	   END TYPE ADDRESS
      CONTAINS
	RECURSIVE SUBROUTINE SELECTION_SORT (ARRAY_ARG)
	   TYPE(ADDRESS),DIMENSION(:),INTENT (INOUT) :: ARRAY_ARG
	   INTEGER				     :: CURRENT_SIZE
	   INTEGER,DIMENSION(1)			     :: BIG
	   CURRENT_SIZE = SIZE(ARRAY_ARG)
	   IF (CURRENT_SIZE > 0) THEN
	      BIG = MAXLOC(ARRAY_ARG(:) % ZIP_CODE)
	      CALL SWAP(BIG(1),CURRENT_SIZE)
	      CALL SELECTION_SORT(ARRAY_ARG(1:CURRENT_SIZE - 1))
	      END IF
	CONTAINS
	   SUBROUTINE SWAP(I,J)
	      INTEGER,INTENT(IN) :: I,J
	      TYPE(ADDRESS)	 :: TEMP

	      TEMP = ARRAY_ARG(I)
	      ARRAY_ARG(I) = ARRAY_ARG(J)
	      ARRAY_ARG(J) = TEMP
	      END SUBROUTINE SWAP
	END SUBROUTINE SELECTION_SORT
    END MODULE SORT

 subroutine ss1
	USE SORT
	IMPLICIT NONE
	INTEGER,PARAMETER		    :: ARRAY_SIZE=9 
	TYPE(ADDRESS),DIMENSION(ARRAY_SIZE) :: DATA_ARRAY
	INTEGER				    :: I,N
	DO, I = 1,ARRAY_SIZE
	    READ (11,'(/A/A/A/A2,I8)',END=10) DATA_ARRAY(I)
	    WRITE(12,'(/A/A/A/A2,I8)') DATA_ARRAY(I)
	    END DO
    10  N = I - 1
	CALL SELECTION_SORT(DATA_ARRAY(1:N))
 	WRITE(12,'(//A)') 'After sorting:'
	DO, I = 1,N
	    WRITE(12,'(/A/A/A/A2,I8)') DATA_ARRAY(I)
	    END DO
end
subroutine s1
use SORT,only:ADDRESS
integer,parameter::array_size=9
type(ADDRESS),dimension(array_size)::data
doi=9,1,-1
 data(i)=ADDRESS('tom'//char(ichar('0')+i),'3-'//char(ichar('0')+i),'Numazu',char(ichar('0')+i)//char(ichar('0')+i),i)
 write(11,'(/a/a/a/a2,i8)') data(i)
end do
rewind 11
call ss1
end
