program main
  n1 = isub1()
  n2 = isub2()
  if (n1.eq.1 .and. n2.eq.1) write(6,*) "ok"
end program main

integer function isub1()
  integer*1  i1x, i1y
  integer*2  i2x, i2y
  integer*4  i4x, i4y
  integer*8  i8x, i8y
  real*4  r4x, r4y
  real*8  r8x, r8y, calc(6),res/-2/

  data i1x,i2x,i4x,i8x,r4x,r8x/6*-2/
  data i1y,i2y,i4y,i8y,r4y,r8y/6*4/

  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i1y)
  !$omp end atomic
  calc(1) = r8x
  r8x = -2
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i2y)
  !$omp end atomic
  calc(2) = r8x
  r8x = -2
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i4y)
  !$omp end atomic
  calc(3) = r8x
  r8x = -2
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i8y)
  !$omp end atomic
  calc(4) = r8x
  r8x = -2
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  r4y)
  !$omp end atomic
  calc(5) = r8x
  r8x = -2
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  r8y)
  !$omp end atomic
  calc(6) = r8x

  if (calc(1) .ne. res .or. calc(2) .ne. res .or. calc(3) .ne. res .or. calc(4) .ne. res .or. calc(5) .ne. res .or. calc(6) .ne. res) then
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
  integer*8  i8x, i8y
  real*4  r4x, r4y
  real*8  r8x, r8y, calc(6),res/-2/

  data i1x,i2x,i4x,i8x,r4x,r8x/6*4/
  data i1y,i2y,i4y,i8y,r4y,r8y/6*-2/

  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i1y)
  !$omp end atomic
  calc(1) = r8x
  r8x = 4
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i2y)
  !$omp end atomic
  calc(2) = r8x
  r8x = 4
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i4y)
  !$omp end atomic
  calc(3) = r8x
  r8x = 4
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  i8y)
  !$omp end atomic
  calc(4) = r8x
  r8x = 4
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  r4y)
  !$omp end atomic
  calc(5) = r8x
  r8x = 4
  !$omp atomic seq_cst,update
  r8x   =  min(r8x  ,  r8y)
  !$omp end atomic
  calc(6) = r8x

  if (calc(1) .ne. res .or. calc(2) .ne. res .or. calc(3) .ne. res .or. calc(4) .ne. res .or. calc(5) .ne. res .or. calc(6) .ne. res) then
     write(6,*) "ng2"
     write(6,*) calc
     isub2 = 0
  else
     isub2 = 1
  endif
end function isub2
