       program main
       integer param0,param1,param2,param3,param4
       namelist /cntrl/ param0,param1,param2,param3,param4
       write(3,'(a)') "&cntrl"
       write(3,'(a)') "param0 = 0             , param2 = 2            ,"
       write(3,'(a)') " param4 = 4             ,"
       write(3,"(a)") "param1 = 1             , param3 = 3            ,"
       write(3,"(a)") "&end"
       rewind 3
       OPEN(UNIT=3,BLANK='NULL')
       READ(3,cntrl)
       if (param0/=0)print *,'error-1'
       if (param1/=1)print *,'error-2'
       if (param2/=2)print *,'error-3'
       if (param3/=3)print *,'error-4'
       if (param4/=4)print *,'error-5'
       print *,'pass'
       end
