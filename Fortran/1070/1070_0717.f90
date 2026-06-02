#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#define N 48

subroutine sub(n)
  USE_SIMFUNC
  integer omp_get_thread_num
  integer omp_get_num_threads
  integer::n,id,total
  total = omp_get_num_threads();
  id = omp_get_thread_num();

#ifdef SIM_RUN  
  call simprint(n)
  call simprint(":")
  call simprint(id)
  call simprint("/")
  call simprintl(total)
#else
  print '(" ",i0," : ",i0," / ",i0)', n, id, total
#endif  
end subroutine sub

program main
  integer::i
!$omp parallel do
  do i=1,N
     call sub(i)
  end do

end program main
