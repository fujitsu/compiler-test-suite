    NAMELIST /NAM1/ NAM1_I1,NAM1_I2,NAM1_I3
    write(16,'(a)') '    ! namelist input comment'
    write(16,'(a)') '&NAM1'
    write(16,'(a)') 'NAM1_I1 = 10 , ! comment'
    write(16,'(a)') '    NAM1_I2 = 20  !comment'
    write(16,'(a)') '    NAM1_I3 = 30 /'
rewind 16
    READ (16,NML=NAM1)
    if (any((/NAM1_I1,NAM1_I2,NAM1_I3/)/=(/10,20,30/)))write(6,*) "NG"
  print *,'pass'
  end
