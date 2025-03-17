PROGRAM MAIN
  INTEGER, DIMENSION(2,2) :: indata
  NAMELIST /test/ indata
  indata= 0
  OPEN (12,file='dataone')
  write(14,'(a)') '&test'
  write(14,'(a)') 'indata(1,1:1) = 1,'
  write(14,'(a)') '/'
  rewind 14
  READ(14,test)
  if (any((/indata/)/=(/1,0,0,0/)))print *,'error'
  print *,'pass'
END PROGRAM MAIN
