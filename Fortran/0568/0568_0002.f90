INTEGER :: CSTAT
CHARACTER(len = 100) :: CMSG
character(len = 50) :: cmdid
cmdid = "echo 'EXECUTE COMMAND LINE'"
call execute_command_line(cmdid,WAIT = .FALSE.,CMDSTAT = CSTAT,CMDMSG = CMSG)
IF (CSTAT > 0)PRINT *, "101", TRIM(CMSG)
IF (CSTAT == -1)PRINT *, "102", CSTAT
IF (CSTAT == -2)PRINT *, "PASS"
IF (CSTAT == 0)PRINT *, "PASS"
END
