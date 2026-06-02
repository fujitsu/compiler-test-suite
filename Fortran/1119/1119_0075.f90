  call s1
  call s2
  print *,'pass'
contains
  subroutine s1
  type t
     character(10)::c1
  end type t
  type(t)::tt
  tt%c1="1234567890"
  !$omp  task depend(in:tt%c1)
  write(7,*) loc(tt%c1(:))
  tt%c1="abcdefghij"
  !$omp  end task
  if(tt%c1/="1234567890") print *,'err'
end subroutine s1
  subroutine s2
  type t
     character(10)::c1(10)
  end type t
  type(t)::tt
  tt%c1="1234567890"
  !$omp  task depend(in:tt%c1(:))
  write(7,*) loc(tt%c1)
  tt%c1="abcdefghij"
  !$omp  end task
  if(any(tt%c1/=[(("1234567890"),k=1,10)])) print *,'err2'
end subroutine s2
end
  
