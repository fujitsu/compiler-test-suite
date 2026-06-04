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

#if defined(MOD)
#define ROLL_TIMES 33
#else
#define ROLL_TIMES 32
#endif

#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<10E-7).or.(abs(a-b)/abs(a)<10E-7))
#define _TYPE1_ complex(kind=4)
#define _TYPE2_ complex(kind=8)

subroutine init(a,b)
  integer::i
  _TYPE1_::a(ROLL_TIMES)
  _TYPE2_::b(ROLL_TIMES)
!ocl nosimd
  do i=1,ROLL_TIMES
     a = cmplx(2.2*i, sin(i*1.1)-cos(i-1.1), kind=4)
     b = cmplx(exp(-1.1*i),i*log(i+3.0)-cos(i*i*1.1), kind=8)
  end do
end subroutine init

_TYPE2_ function sum_ans(a,b) result(s)
  integer::i
  _TYPE1_::a(ROLL_TIMES),sa
  _TYPE2_::b(ROLL_TIMES),sb
  sa = cmplx(0, 0, kind=4)
  sb = cmplx(1.0, 2.0, kind=8)
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
  sa = cmplx(0, 0, kind=4)
  sb = cmplx(1.0, 2.0, kind=8)
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
