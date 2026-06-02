#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#define PRINT_ARG(x) call simprintl(x)
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#define PRINT_ARG(x) print *,x
#endif

#if !defined(ROLL_TIMES)
#define ROLL_TIMES 16
#endif

#define IS_EQUAL(a,b) (a==b)
#define _TYPE_ integer(kind=1)

subroutine init(a)
  integer::i
  _TYPE_::a(ROLL_TIMES)
!ocl nosimd
  do i=1,ROLL_TIMES
     a = MOD(i*2,3)
  end do
end subroutine init

_TYPE_ function sum_ans(a) result(s)
  _TYPE_::a(ROLL_TIMES)
!ocl nosimd
  s = SUM(a)
end function sum_ans

_TYPE_ function sum_res(a) result(s)
  _TYPE_::a(ROLL_TIMES)
  s = SUM(a)
end function sum_res

program main
  USE_SIMFUNC
  interface
     _TYPE_ function sum_res(a) result(s)
       _TYPE_::a(ROLL_TIMES)
     end function sum_res
     _TYPE_ function sum_ans(a) result(s)
       _TYPE_::a(ROLL_TIMES)
     end function sum_ans
     subroutine init(a)
       _TYPE_::a(ROLL_TIMES)
     end subroutine init
  end interface
  _TYPE_::a(ROLL_TIMES)
  _TYPE_::ans, res
  call init(a)
  ans = sum_ans(a)
  res = sum_res(a)
  if (IS_EQUAL(ans, res)) then
     PRINT_OK
  else
     PRINT_NG
  end if
end program main
