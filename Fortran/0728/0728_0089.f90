  logical KK
  TYPE A
    TYPE(A),POINTER::PTR=>NULL()
    INTEGER::VALUE=100
  END TYPE
  TYPE(A),POINTER:: BASE_PTR
  do ii=1,1000
  ALLOCATE(BASE_PTR)
  write(11,*)ASSOCIATED(BASE_PTR%PTR),BASE_PTR%VALUE
 rewind 11
  read(11,*) kk
 rewind 11
  if (kk)write(6,*) "NG"
  Allocate(BASE_PTR%PTR)
  deallocate(BASE_PTR)
  end do
print *,'pass'
  END
