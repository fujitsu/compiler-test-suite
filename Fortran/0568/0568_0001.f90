INTEGER :: CSTAT
CHARACTER(len = 100) :: CMSG
character(len = 50) :: cmdid
cmdid = "echo 'EXECUTE COMMAND LINE'"
call execute_command_line(cmdid,WAIT = .TRUE.,CMDSTAT = CSTAT,CMDMSG = CMSG)

IF (CSTAT > 0) THEN

PRINT *, "101", TRIM(CMSG)
ELSE IF (CSTAT < 0) THEN
PRINT *, "102", CSTAT
ELSE
PRINT *, "PASS"
END IF
END
