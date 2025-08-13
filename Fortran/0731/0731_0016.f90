character*30 c
i6=2
    write (i6,'(a,( t6,   i4) )') ' ip = ',1
    write (i6,'(a,  t6,   i4 )') ' ip = ',1
    write (i6,'(a, (t6,  (i4)) )') ' ip = ',1
    write (i6,'(a, t6,  (i4) )') ' ip = ',1
    write (i6,'(a,(t6,10(i7)))') ' ip = ',1
    c="(a, t6,  (i4) )"
    write (i6,c) ' ip = ',1
    print *,'pass'
end
