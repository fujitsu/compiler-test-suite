INTEGER :: CSTAT
CHARACTER(len = 100) :: CMSG

call execute_command_line("echo EXECUTE COMMAND LINE",WAIT = .true.,CMDSTAT = CSTAT,CMDMSG = CMSG)
IF (CSTAT > 0) THEN

PRINT *, "101", TRIM(CMSG)
ELSE IF (CSTAT < 0) THEN

PRINT *, "102", TRIM(CMSG)
ELSE
PRINT *, "PASS"
END IF
END
