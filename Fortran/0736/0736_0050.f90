 integer, dimension(2) :: a=1
 integer, dimension(2) :: b=1
 integer, dimension(2) :: y
 integer :: i
 write(14,*) 1
 rewind 14
 read (14,*)i
 IF (i==1) THEN
  WHERE (a/=2)
    y = 1
    WHERE (b==3)
      y = 2
    ENDWHERE
  ELSEWHERE
     y = 3
  ENDWHERE
 ENDIF
print *,'pass'
end
