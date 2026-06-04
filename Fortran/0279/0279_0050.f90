interface
SUBROUTINE assumed_dummy(rP)
REAL,DIMENSION(..)::rP
END SUBROUTINE assumed_dummy
end interface

REAL,DIMENSION(2)::r1=1.d0
CALL assumed_dummy(r1)
end
SUBROUTINE assumed_dummy(rP)
REAL,DIMENSION(..)::rP
integer,parameter::a=storage_size(rp)
if(a .ne. storage_size(rp))print*,"100"
print*,"PASS"
END SUBROUTINE assumed_dummy


