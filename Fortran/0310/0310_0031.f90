INTEGER :: IH=123
NAMELIST /X/IH
OPEN(6)
WRITE(6,NML=X)
PRINT *,'*** ok ***'
END