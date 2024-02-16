module sub_mod
  integer(kind=4),parameter :: ST=1,LT=10,INC=2
  real(kind=16),parameter   :: ANS=15.0_16
  logical(kind=1) ok
  contains
  subroutine init_ok()
    ok = .false.
  end subroutine
end module

module mod
  use sub_mod
  integer(kind=1),dimension(ST:LT) :: array_i1
  integer(kind=2),dimension(ST:LT) :: array_i2
  integer(kind=4),dimension(ST:LT) :: array_i4
  integer(kind=8),dimension(ST:LT) :: array_i8
  real(kind=4),dimension(ST:LT)    :: array_r4
  real(kind=8),dimension(ST:LT)    :: array_r8
  real(kind=16),dimension(ST:LT)   :: array_r16
  complex(kind=4),dimension(ST:LT) :: array_c8
  complex(kind=8),dimension(ST:LT) :: array_c16
  complex(kind=16),dimension(ST:LT):: array_c32
end module

program main
  use mod

  call init_ok()

  call test_i1(1_1)
  call test_i2(1_2)
  call test_i4(1_4)
  call test_i8(1_8)
  call test_r4(1._4)
  call test_r8(1._8)
  call test_r16(1._16)
  call test_c8((1._4,1._4))
  call test_c16((1._8,1._8))
  call test_c32((1._16,1._16))

  if (ok) then
     print *,"OK"
  endif
end program

subroutine test_i1(value)
  use mod
  integer(kind=1) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_i1(start_index():last_index():increment())=array_i1(start_index():last_index():increment())+value
  call test_check(real(sum(array_i1),kind=16),0)
  contains
  subroutine init_data()
  array_i1 = value
  end subroutine
end subroutine

subroutine test_i2(value)
  use mod
  integer(kind=2) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_i2(start_index():last_index():increment())=array_i2(start_index():last_index():increment())+value
  call test_check(real(sum(array_i2),kind=16),1)
  contains
  subroutine init_data()
  array_i2 = value
  end subroutine
end subroutine

subroutine test_i4(value)
  use mod
  integer(kind=4) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_i4(start_index():last_index():increment())=array_i4(start_index():last_index():increment())+value
  call test_check(real(sum(array_i4),kind=16),2)
  contains
  subroutine init_data()
  array_i4 = value
  end subroutine
end subroutine

subroutine test_i8(value)
  use mod
  integer(kind=8) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_i8(start_index():last_index():increment())=array_i8(start_index():last_index():increment())+value
  call test_check(real(sum(array_i8),kind=16),3)
  contains
  subroutine init_data()
  array_i8 = value
  end subroutine
end subroutine

subroutine test_r4(value)
  use mod
  real(kind=4) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_r4(start_index():last_index():increment())=array_r4(start_index():last_index():increment())+value
  call test_check(real(sum(array_r4),kind=16),4)
  contains
  subroutine init_data()
  array_r4 = value
  end subroutine
end subroutine

subroutine test_r8(value)
  use mod
  real(kind=8) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_r8(start_index():last_index():increment())=array_r8(start_index():last_index():increment())+value
  call test_check(real(sum(array_r8),kind=16),5)
  contains
  subroutine init_data()
  array_r8 = value
  end subroutine
end subroutine

subroutine test_r16(value)
  use mod
  real(kind=16) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_r16(start_index():last_index():increment())=array_r16(start_index():last_index():increment())+value
  call test_check(sum(array_r16),6)
  contains
  subroutine init_data()
  array_r16 = value
  end subroutine
end subroutine

subroutine test_c8(value)
  use mod
  complex(kind=4) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_c8(start_index():last_index():increment())=array_c8(start_index():last_index():increment())+value
  call test_check(real(aimag(sum(array_c8)),kind=16),7)
  contains
  subroutine init_data()
  array_c8 = value
  end subroutine
end subroutine

subroutine test_c16(value)
  use mod
  complex(kind=8) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_c16(start_index():last_index():increment())=array_c16(start_index():last_index():increment())+value
  call test_check(real(aimag(sum(array_c16)),kind=16),8)
  contains
  subroutine init_data()
  array_c16 = value
  end subroutine
end subroutine

subroutine test_c32(value)
  use mod
  complex(kind=16) value
  integer(kind=4) start_index,last_index
  call init_data()
  array_c32(start_index():last_index():increment())=array_c32(start_index():last_index():increment())+value
  call test_check(aimag(sum(array_c32)),9)
  contains
  subroutine init_data()
  array_c32 = value
  end subroutine
end subroutine

subroutine test_check(value,num)
  use sub_mod
  real(kind=16) value
  integer(kind=4) num
  
  if (value == ANS) then
    ok = .true.
  else
    print *,"NG : TEST(",num,")  value = ",value 
    ok = .false.
  endif
end subroutine

integer(kind=4) function start_index()
  use sub_mod
  start_index = int(cos(0.0_8),kind=4)*ST
end function

integer(kind=4) function last_index()
  use sub_mod
  last_index  = int(cos(0.0_8),kind=4)*LT
end function

integer(kind=4) function increment()
  use sub_mod
  increment  = int(cos(0.0_8),kind=4)*INC
end function
