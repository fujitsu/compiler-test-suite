MODULE M
 TYPE gg
   INTEGER::CC
 END TYPE gg
end
INTERFACE  WRITE(UNFORMATTED) 
     SUBROUTINE UNFMTWRITE1(DTV, UNIT, IOSTAT, IOMSG)
         use M
          CLASS(gg), INTENT(IN)    :: DTV
         INTEGER,                  INTENT(IN)    :: UNIT
         INTEGER,                  INTENT(OUT)   :: IOSTAT
         CHARACTER(LEN=*),         INTENT(INOUT) :: IOMSG
     END SUBROUTINE UNFMTWRITE1
END INTERFACE WRITE(UNFORMATTED)
print *,'pass'
end
