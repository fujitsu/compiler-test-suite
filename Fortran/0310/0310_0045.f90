DIMENSION IDATA(5)
DATA IDATA/1,2,3,4,5/
WRITE(1) IDATA
WRITE(1) (I,I=6,10)
ENDFILE 1
PRINT *,'*** ok ***'
CLOSE(1,STATUS='DELETE')
END
