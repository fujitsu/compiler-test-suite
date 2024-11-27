 integer, dimension(2) :: a=1
 integer, dimension(2) :: b=1
 integer, dimension(2) :: y
 integer :: i
 write(1,*) 1
 rewind 1
 read (1,*)i
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
