module mod1
integer,pointer:: MESS(:)
end module mod1
use mod1
integer MP,LEN_MES,MPI_INTEGER,IDR,ICOMM,IRQ,ICODE
MP=1
allocate(MESS(30000))
do i=1,10000
CALL sub(MESS,LEN_MES,MPI_INTEGER,IDR,10+MP,ICOMM,IRQ,ICODE)
enddo
print *,'pass'
end
subroutine sub(MESS,LEN_MES,MPI_INTEGER,IDR,MP,ICOMM,IRQ,ICODE)
INTEGER MESS(*)
integer LEN_MES,MPI_INTEGER,IDR,MP,ICOMM,IRQ,ICODE
end subroutine
