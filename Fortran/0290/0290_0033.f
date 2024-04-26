      CHARACTER*15 CH
      NAMELIST /NAM/CH
      CH='12345'
      WRITE(6,*)'********************************************'
      WRITE(6,*)'     NEXT OUTPUT LAST DATA .EQ. &end ===> OK'
      WRITE(6,*)'     NEXT OUTPUT LAST DATA .EQ. /    ===> OK'
      WRITE(6,*)'********************************************'
      WRITE(6,NAM)
      END
