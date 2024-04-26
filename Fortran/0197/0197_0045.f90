MODULE M
 TYPE gg
   INTEGER::CC
 END TYPE gg
end
INTERFACE  READ(UNFORMATTED) 
     SUBROUTINE UNFMT(DTV, UNIT, IOSTAT, IOMSG)
         use M
          CLASS(gg), INTENT(INOUT)    :: DTV
         INTEGER,                  INTENT(IN)    :: UNIT
         INTEGER,                  INTENT(OUT)   :: IOSTAT
         CHARACTER(LEN=*),         INTENT(INOUT) :: IOMSG
     END SUBROUTINE 
END INTERFACE 
print *,'pass'
end
