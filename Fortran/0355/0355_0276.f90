program main
  n1 = isub1()
  n2 = isub2()
  if (n1.eq.1 .and. n2.eq.1) write(6,*) "ok"
end program main

integer function isub1()
  integer*1  i1x, i1y
  integer*2  i2x, i2y
  integer*4  i4x, i4y
  integer*8  i8x, i8y, calc(4),res/-12/

  data i1x,i2x,i4x,i8x/4*-8/
  data i1y,i2y,i4y,i8y/4*12/

  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i1y)
  !$omp end atomic
  calc(1) = i8x
  i8x = -8
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i2y)
  !$omp end atomic
  calc(2) = i8x
  i8x = -8
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i4y)
  !$omp end atomic
  calc(3) = i8x
  i8x = -8
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i8y)
  !$omp end atomic
  calc(4) = i8x

  if (calc(1) .ne. res .or. calc(2) .ne. res .or. calc(3) .ne. res .or. calc(4) .ne. res) then
     write(6,*) "ng1"
     write(6,*) calc
     isub1 = 0
  else
     isub1 = 1
  endif
end function isub1


integer function isub2()
  integer*1  i1x, i1y
  integer*2  i2x, i2y
  integer*4  i4x, i4y
  integer*8  i8x, i8y, calc(4),res/-12/

  data i1x,i2x,i4x,i8x/4*12/
  data i1y,i2y,i4y,i8y/4*-8/

  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i1y)
  !$omp end atomic
  calc(1) = i8x
  i8x = 12
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i2y)
  !$omp end atomic
  calc(2) = i8x
  i8x = 12
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i4y)
  !$omp end atomic
  calc(3) = i8x
  i8x = 12
  !$omp atomic seq_cst,update
  i8x   =  ieor(i8x  ,  i8y)
  !$omp end atomic
  calc(4) = i8x

  if (calc(1) .ne. res .or. calc(2) .ne. res .or. calc(3) .ne. res .or. calc(4) .ne. res) then
     write(6,*) "ng2"
     write(6,*) calc
     isub2 = 0
  else
     isub2 = 1
  endif
end function isub2
