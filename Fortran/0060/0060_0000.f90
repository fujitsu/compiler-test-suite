PROGRAM Main
IMPLICIT NONE

INTEGER(selected_int_kind(18)) :: fibo(3) = (/1,1,0/)*1024
INTEGER(selected_int_kind(18)) :: l, new_size, ierr
REAL, POINTER :: a(:), temp(:)

allocate( a(fibo(1)) )
goto 1

new_size=fibo(2)
allocate(temp(new_size))
deallocate(a)
a => temp

DO

   write(1,*)
   fibo(3) = sum(fibo(1:2)) ; fibo(1:2) = fibo(2:3)

   l = size(a)
   write(1,*)"total allocated =",l
   new_size = fibo(3)
   allocate(temp(new_size), STAT=ierr)
   IF (ierr == 0) THEN
      deallocate(a)
      a => temp
   ELSE
      write(1,*)"realloc of ",fibo(3)," failed"
      deallocate(a)
      write(1,*)"dealloc of a --> total allocated = 0"
      allocate( a(fibo(3)+l), STAT=ierr)
      IF (ierr == 0) THEN
         write(1,*)"alloc of ",l+fibo(3),"(=",l,"+",fibo(3),") possible!"
      ELSE
         write(1,*)"alloc of ",l+fibo(3),"(=",l,"+",fibo(3),") failed"
      END IF
      EXIT
   END IF

END DO
1 print *,'pass'

END
