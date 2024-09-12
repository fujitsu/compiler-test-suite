  integer(1)::i1(2),j(2),x=10
  type ty
   integer:: i1(2)
   integer:: j(2)
  end type
  type(ty):: tp
  i1=1
  tp%i1=1
  !$omp atomic capture
  j(1)=i1(1)
  i1(1)=MAX(i1(1),x)
  !$omp end atomic

  !$omp atomic capture
  i1(1)=MAX(i1(1),x)
  j(1)=i1(1)
  !$omp end atomic

  !$omp atomic capture
  tp%j(1)=tp%i1(1)
  tp%i1(1)=MAX(tp%i1(1),x)
  !$omp end atomic

  !$omp atomic capture
  tp%i1(1)=MAX(tp%i1(1),x)
  tp%j(1)=tp%i1(1)
  !$omp end atomic
  print *,'pass'
  end
