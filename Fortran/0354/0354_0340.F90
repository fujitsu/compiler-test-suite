#define N 4096
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 8
#define MASTER 25147080
#define ERR_D 0

subroutine target(red, a, &
  v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, &
  v11, v12, v13, v14, v15, v16, v17, v18)
  MTYPE(TKIND) :: red
  MTYPE(TKIND),dimension(1:N) :: v1,v2,v3,v4,v5,v6,v7,v8,v9,v10
  MTYPE(TKIND),dimension(1:N) :: v11,v12,v13,v14,v15,v16,v17,v18
  MTYPE(TKIND),dimension(1:N):: a
  integer::i
  red = MTYPEFUNC(0,kind=TKIND)
  do i=9, N-8
     red = red + (a(i-8) + a(i) + a(i+8)) &
          + (v1(i) + v2(i) + v3(i) + v4(i) + v5(i) + v6(i) + v7(i) + v8(i) + v9(i) + v10(i) &
          + v11(i) + v12(i) + v13(i) + v14(i) + v15(i) + v16(i) + v17(i) + v18(i))
  end do
end subroutine target

subroutine master(res)
  MTYPE(TKIND) :: res
  res = MASTER
end subroutine master


subroutine init(src)
  MTYPE(TKIND),dimension(1:N)::src
  integer::i
  do i=1,N
     src(i) = MTYPEFUNC(i,kind=TKIND)
  end do
end subroutine init


subroutine check(red, res)
  MTYPE(TKIND) :: red, res
  interface
     logical function equal_d(a,b)
       MTYPE(TKIND)::a,b
     end function equal_d
  end interface
  if (equal_d(red, res)) then
     print *, "OK"
  else
     print *, "NG"
  endif
end subroutine check


program main
  MTYPE(TKIND),dimension(1:N):: src
  MTYPE(TKIND) :: red,res
  MTYPE(TKIND),dimension(1:N) :: v1,v2,v3,v4,v5,v6,v7,v8,v9,v10
  MTYPE(TKIND),dimension(1:N) :: v11,v12,v13,v14,v15,v16,v17,v18
  v1 = MTYPEFUNC(1,kind=TKIND)
  v2 = MTYPEFUNC(1,kind=TKIND)
  v3 = MTYPEFUNC(1,kind=TKIND)
  v4 = MTYPEFUNC(1,kind=TKIND)
  v5 = MTYPEFUNC(1,kind=TKIND)
  v6 = MTYPEFUNC(1,kind=TKIND)
  v7 = MTYPEFUNC(1,kind=TKIND)
  v8 = MTYPEFUNC(1,kind=TKIND)
  v9 = MTYPEFUNC(1,kind=TKIND)
  v10 = MTYPEFUNC(1,kind=TKIND)
  v11 = MTYPEFUNC(1,kind=TKIND)
  v12 = MTYPEFUNC(1,kind=TKIND)
  v13 = MTYPEFUNC(1,kind=TKIND)
  v14 = MTYPEFUNC(1,kind=TKIND)
  v15 = MTYPEFUNC(1,kind=TKIND)
  v16 = MTYPEFUNC(1,kind=TKIND)
  v17 = MTYPEFUNC(1,kind=TKIND)
  v18 = MTYPEFUNC(1,kind=TKIND)
  call init(src);
  call target(red,src,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,&
       v11,v12,v13,v14,v15,v16,v17,v18)
  call master(res)
  call check(red, res)
end  program main

logical function equal_d(a, b)
  MTYPE(TKIND)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else 
     equal_d = .false.
  end if
end function equal_d
