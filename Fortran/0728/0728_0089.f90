  logical KK
  TYPE A
    TYPE(A),POINTER::PTR=>NULL()
    INTEGER::VALUE=100
  END TYPE
  TYPE(A),POINTER:: BASE_PTR
  do ii=1,1000
  ALLOCATE(BASE_PTR)
  write(1,*)ASSOCIATED(BASE_PTR%PTR),BASE_PTR%VALUE
 rewind 1
  read(1,*) kk
 rewind 1
  if (kk)write(6,*) "NG"
  Allocate(BASE_PTR%PTR)
  deallocate(BASE_PTR)
  end do
print *,'pass'
  END
