module darg_test
type darg_on_reg
  real(kind=8) :: dt1, dt2
end type darg_on_reg
type darg_on_mem
  real(kind=8) :: dt1, dt2, dt3
end type darg_on_mem
contains
  subroutine f1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    integer(kind=4) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    integer(kind=4) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    arg1 = arg1 + 10
    arg9 = arg9 + 20
    call icheck(auto1, 1)
    call icheck(auto2, 2)
  end subroutine f1
  subroutine fv1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    integer(kind=4),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    integer(kind=4) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    arg1 = arg1 + 10
    arg9 = arg9 + 20
    call icheck(auto1, 11)
    call icheck(auto2, 22)
    call icheck(arg1, 21)
    call icheck(arg9, 42)
  end subroutine fv1
  subroutine f2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    type(darg_on_reg) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    type(darg_on_reg) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(auto1%dt1, 1.0_8)
    call r8check(auto1%dt2, 2.0_8)
    call r8check(auto2%dt1, 3.0_8)
    call r8check(auto2%dt2, 4.0_8)
    arg1%dt1 = arg1%dt1 + 10.0_8
    arg9%dt2 = arg9%dt2 + 20.0_8
  end subroutine f2
  subroutine fv2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    type(darg_on_reg),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    type(darg_on_reg) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(auto1%dt1, 11.0_8)
    call r8check(auto1%dt2, 2.0_8)
    call r8check(auto2%dt1, 3.0_8)
    call r8check(auto2%dt2, 24.0_8)
    arg1%dt2 = arg1%dt2 + 10.0_8
    arg9%dt1 = arg9%dt1 + 20.0_8
    call r8check(arg1%dt2, 12.0_8)
    call r8check(arg9%dt1, 23.0_8)
  end subroutine fv2
  subroutine f3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    type(darg_on_mem) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    type(darg_on_mem) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(auto1%dt1, 1.0_8)
    call r8check(auto1%dt2, 2.0_8)
    call r8check(auto1%dt3, 3.0_8)
    call r8check(auto2%dt1, 4.0_8)
    call r8check(auto2%dt2, 5.0_8)
    call r8check(auto2%dt3, 6.0_8)
    arg1%dt1 = arg1%dt1 + 10.0_8
    arg9%dt2 = arg9%dt2 + 20.0_8
  end subroutine f3
  subroutine fv3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    type(darg_on_mem),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    type(darg_on_mem) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(auto1%dt1, 11.0_8)
    call r8check(auto1%dt2, 2.0_8)
    call r8check(auto1%dt3, 3.0_8)
    call r8check(auto2%dt1, 4.0_8)
    call r8check(auto2%dt2, 25.0_8)
    call r8check(auto2%dt3, 6.0_8)
    arg1%dt2 = arg1%dt2 + 10.0_8
    arg9%dt1 = arg9%dt1 + 20.0_8
    call r8check(arg1%dt2, 12.0_8)
    call r8check(arg9%dt1, 24.0_8)
  end subroutine fv3
  subroutine f4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    complex(kind=8) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    complex(kind=8) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(real(auto1), 1.0_8)
    call r8check(imag(auto1), 2.0_8)
    call r8check(real(auto2), 3.0_8)
    call r8check(imag(auto2), 4.0_8)
    arg1 = arg1 + (10.0_8, 20.0_8)
    arg9 = arg9 + (30.0_8, 40.0_8)
  end subroutine f4
  subroutine fv4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    complex(kind=8),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    complex(kind=8) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r8check(real(auto1), 11.0_8)
    call r8check(imag(auto1), 22.0_8)
    call r8check(real(auto2), 33.0_8)
    call r8check(imag(auto2), 44.0_8)
    arg1 = arg1 + (10.0_8, 20.0_8)
    arg9 = arg9 + (30.0_8, 40.0_8)
    call r8check(real(arg1), 21.0_8)
    call r8check(imag(arg1), 42.0_8)
    call r8check(real(arg9), 63.0_8)
    call r8check(imag(arg9), 84.0_8)
  end subroutine fv4
  subroutine f5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    complex(kind=16) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    complex(kind=16) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r16check(real(auto1), 1.0_16)
    call r16check(imag(auto1), 2.0_16)
    call r16check(real(auto2), 3.0_16)
    call r16check(imag(auto2), 4.0_16)
    arg1 = arg1 + (10.0_16, 20.0_16)
    arg9 = arg9 + (30.0_16, 40.0_16)
  end subroutine f5
  subroutine fv5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    complex(kind=16),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    complex(kind=16) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r16check(real(auto1), 11.0_16)
    call r16check(imag(auto1), 22.0_16)
    call r16check(real(auto2), 33.0_16)
    call r16check(imag(auto2), 44.0_16)
    arg1 = arg1 + (10.0_16, 20.0_16)
    arg9 = arg9 + (30.0_16, 40.0_16)
    call r16check(real(arg1), 21.0_16)
    call r16check(imag(arg1), 42.0_16)
    call r16check(real(arg9), 63.0_16)
    call r16check(imag(arg9), 84.0_16)
  end subroutine fv5
  subroutine f6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    real(kind=16) :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    real(kind=16) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r16check(auto1, 1.0_16)
    call r16check(auto2, 2.0_16)
    arg1 = arg1 + 10.0_16
    arg9 = arg9 + 20.0_16
  end subroutine f6
  subroutine fv6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    real(kind=16),value :: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9
    real(kind=16) :: auto1, auto2
    auto1 = arg1
    auto2 = arg9
    call r16check(auto1, 11.0_16)
    call r16check(auto2, 22.0_16)
    arg1 = arg1 + 10.0_16
    arg9 = arg9 + 20.0_16
    call r16check(arg1, 21.0_16)
    call r16check(arg9, 42.0_16)
  end subroutine fv6
  subroutine icheck(arg1, arg2)
    integer(kind=4) :: arg1, arg2
    if ( arg1 .ne. arg2 ) then
       print *, "NG"
    endif
  end subroutine icheck
  subroutine r8check(arg1, arg2)
    real(kind=8) :: arg1, arg2
    if ( arg1 .ne. arg2 ) then
       print *, "NG : val1 ", arg1, " val2 ", arg2
    endif
  end subroutine r8check
  subroutine r16check(arg1, arg2)
    real(kind=16) :: arg1, arg2
    if ( arg1 .ne. arg2 ) then
       print *, "NG : val1 ", arg1, " val2 ", arg2
    endif
  end subroutine r16check
end module darg_test

program main
  use darg_test
  integer(kind=4) :: i41/1/,i49/2/
  type(darg_on_reg) :: tr1, tr9
  type(darg_on_mem) :: tm1, tm9
  complex(kind=8) :: c161/(1.0_8,2.0_8)/,c169/(3.0_8,4.0_8)/
  complex(kind=16) :: c321/(1.0_16,2.0_16)/,c329/(3.0_16,4.0_16)/
  real(kind=16) :: r161/1.0_16/,r169/2.0_16/

  call f1(i41,i41,i41,i41,i41,i41,i41,i41,i49)
  call icheck(i41, 11)
  call icheck(i49, 22)
  call fv1(i41,i41,i41,i41,i41,i41,i41,i41,i49)

  tr1%dt1 = 1.0_8; tr1%dt2 = 2.0_8; tr9%dt1 = 3.0_8; tr9%dt2 = 4.0_8
  call f2(tr1,tr1,tr1,tr1,tr1,tr1,tr1,tr1,tr9)
  call r8check(tr1%dt1, 11.0_8)
  call r8check(tr9%dt2, 24.0_8)
  call fv2(tr1,tr1,tr1,tr1,tr1,tr1,tr1,tr1,tr9)

  tm1%dt1 = 1.0_8; tm1%dt2 = 2.0_8; tm1%dt3 = 3.0_8
  tm9%dt1 = 4.0_8; tm9%dt2 = 5.0_8; tm9%dt3 = 6.0_8
  call f3(tm1,tm1,tm1,tm1,tm1,tm1,tm1,tm1,tm9)
  call r8check(tm1%dt1, 11.0_8)
  call r8check(tm9%dt2, 25.0_8)
  call fv3(tm1,tm1,tm1,tm1,tm1,tm1,tm1,tm1,tm9)

  call f4(c161,c161,c161,c161,c161,c161,c161,c161,c169)
  call r8check(real(c161), 11.0_8)
  call r8check(imag(c161), 22.0_8)
  call r8check(real(c169), 33.0_8)
  call r8check(imag(c169), 44.0_8)
  call fv4(c161,c161,c161,c161,c161,c161,c161,c161,c169)

  call f5(c321,c321,c321,c321,c321,c321,c321,c321,c329)
  call r16check(real(c321), 11.0_16)
  call r16check(imag(c321), 22.0_16)
  call r16check(real(c329), 33.0_16)
  call r16check(imag(c329), 44.0_16)
  call fv5(c321,c321,c321,c321,c321,c321,c321,c321,c329)

  call f6(r161,r161,r161,r161,r161,r161,r161,r161,r169)
  call r16check(r161, 11.0_16)
  call r16check(r169, 22.0_16)
  call fv6(r161,r161,r161,r161,r161,r161,r161,r161,r169)

  print *, "OK"
end program main
