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

#define IS_EQUAL(a,b) ((a==b).or.(abs(a-b)<10E-7))
#define _TYPE1_ integer(kind=4)
#define _TYPE2_ real(kind=8)

subroutine init(a,b)
  integer::i
  _TYPE1_::a(ROLL_TIMES)
  _TYPE2_::b(ROLL_TIMES)
!ocl nosimd
  do i=1,ROLL_TIMES
     a = -i*1+1
     b = i*log(2.0*i+3)-cos(i*i-1.1)
  end do
end subroutine init

_TYPE2_ function sum_ans(a,b) result(s)
  integer::i
  _TYPE1_::a(ROLL_TIMES),sa
  _TYPE2_::b(ROLL_TIMES),sb
  sa = 10
  sb = -1.1
!ocl nosimd
  do i=1,ROLL_TIMES
     sa = sa + a(i)
     sb = sb + b(i)
  end do
  s = sa + sb
end function sum_ans

_TYPE2_ function sum_res(a,b) result(s)
  integer::i
  _TYPE1_::a(ROLL_TIMES),sa
  _TYPE2_::b(ROLL_TIMES),sb
  sa = 10
  sb = -1.1
  do i=1,ROLL_TIMES
     sa = sa + a(i)
     sb = sb + b(i)
  end do
  s = sa + sb
end function sum_res

program main
  USE_SIMFUNC
  interface
     _TYPE2_ function sum_res(a,b) result(s)
       _TYPE1_::a(ROLL_TIMES)
       _TYPE2_::b(ROLL_TIMES)
     end function sum_res
     _TYPE2_ function sum_ans(a,b) result(s)
       _TYPE1_::a(ROLL_TIMES)
       _TYPE2_::b(ROLL_TIMES)
     end function sum_ans
     subroutine init(a,b)
       _TYPE1_::a(ROLL_TIMES)
       _TYPE2_::b(ROLL_TIMES)
     end subroutine init
  end interface
  _TYPE1_::a(ROLL_TIMES)
  _TYPE2_::b(ROLL_TIMES)
  _TYPE2_::ans, res
  call init(a,b)
  ans = sum_ans(a,b)
  res = sum_res(a,b)
  if (IS_EQUAL(ans, res)) then
     PRINT_OK
  else
     PRINT_NG
  end if
end program main
