  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
  type t
     complex*16::c1
  end type t
  type(t)::tt
  tt%c1=1
  !$omp  task depend(in:tt%c1)
  write(2,*) loc(tt%c1)
  tt%c1=2
  !$omp  end task
  if(tt%c1/=(1.0,0.0)) print *,'err'
end subroutine s1
  subroutine s2
  type t
     complex*16::c1(10)
  end type t
  type(t)::tt
  tt%c1=1
  !$omp  task depend(in:tt%c1)
  write(2,*) loc(tt%c1)
  tt%c1=2
  !$omp  end task
  if(any(tt%c1/=[((1.0,0.0),k=1,10)])) print *,'err2'
end subroutine s2
end program
  
