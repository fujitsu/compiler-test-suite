INTEGER :: CSTAT(2,3,4)
CHARACTER(len = 100) :: CMSG(2,2)
character(len = 50) :: cmdid(2,3)
cmdid(:,:) = "echo EXECUTE COMMAND LINE"
call execute_command_line(cmdid(1,3),WAIT = .FALSE.,CMDSTAT = CSTAT(1,2,3),CMDMSG = CMSG(1,1))
IF (CSTAT(1,2,3) > 0)PRINT *, "101"
IF (CSTAT(1,2,3) == -1)PRINT *, "102", CSTAT
IF (CSTAT(1,2,3) == -2)PRINT *, "PASS"
IF (CSTAT(1,2,3) == 0)PRINT *, "PASS"
END
