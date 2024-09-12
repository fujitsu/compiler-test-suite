      call s1
      print *,'pass'
      end
subroutine s1
write(1,*) &
'	C  90   100'
write(1,*) &
'	F  20   32'
write(1,*) ' &
& 	*  0   0'
rewind 1  
call ss1
end
subroutine ss1
	   REAL CELSIUS,FARENHEIT
	   INTEGER LOW_TEMP,HIGH_TEMP,TEMPERATURE
	   CHARACTER SCALE
	READ_LOOP:   DO
	      READ (1,*) SCALE,LOW_TEMP,HIGH_TEMP
	      IF (SCALE /= 'C' .AND. SCALE /= 'F') EXIT READ_LOOP
	      DO  TEMPERATURE=LOW_TEMP,HIGH_TEMP
	         SELECT CASE (SCALE)
	         CASE ('C')
	            CELSIUS = TEMPERATURE
	            FARENHEIT = 9./5.*CELSIUS + 32.
	         CASE ('F')
	            FARENHEIT = TEMPERATURE
	            CELSIUS = 5./9.*(FARENHEIT-32.)
	         END SELECT
	         write(2,*) CELSIUS,' degrees C correspond to',	&
	                FARENHEIT,' degrees F'			
	      END DO
	   END DO READ_LOOP
	   write(2,*) ' end of valid data'
	   END
