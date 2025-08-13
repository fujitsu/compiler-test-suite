  INTEGER ,DIMENSION(2,3) :: ARY
  ARY = RESHAPE((/5,2,1,3,4,6/),(/2,3/))
  write(14,*)MAXLOC(ARY)
  write(14,*)MAXLOC(ARY,1)
  write(14,*)MAXLOC(ARY,2)
  if (any(MAXLOC(ARY)/=(/2,3/)))write(6,*) "NG"
  if (any(MAXLOC(ARY,1)/=(/1,2,2/)))write(6,*) "NG"
  if (any(MAXLOC(ARY,2)/=(/1,3/)))write(6,*) "NG"
print *,'pass'
  END
