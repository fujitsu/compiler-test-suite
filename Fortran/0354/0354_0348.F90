#define N 1024
#define MTYPE integer
#define MTYPEFUNC int
#define TKIND 4
#define MASTER 16268800
#define ERR_D 0

subroutine target(red, src, &
  v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, &
  v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, &
  v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, &
  v31)
  MTYPE(TKIND) :: red
  MTYPE(TKIND),dimension(1:N) :: v1,v2,v3,v4,v5,v6,v7,v8,v9,v10
  MTYPE(TKIND),dimension(1:N) :: v11,v12,v13,v14,v15,v16,v17,v18,v19,v20
  MTYPE(TKIND),dimension(1:N) :: v21,v22,v23,v24,v25,v26,v27,v28,v29,v30
  MTYPE(TKIND),dimension(1:N) :: v31
  MTYPE(TKIND),dimension(1:N):: src
  integer::i
  red = MTYPEFUNC(0,kind=TKIND)
  do i=1, N
     red = red + src(i) * (v1(i) + v2(i) + v3(i) + v4(i) + v5(i) + v6(i) + v7(i) + v8(i) + v9(i) + v10(i) &
          + v11(i) + v12(i) + v13(i) + v14(i) + v15(i) + v16(i) + v17(i) + v18(i) + v19(i) + v20(i) &
          + v21(i) + v22(i) + v23(i) + v24(i) + v25(i) + v26(i) + v27(i) + v28(i) + v29(i) + v30(i) &
          + v31(i))
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
  MTYPE(TKIND),dimension(1:N) :: v11,v12,v13,v14,v15,v16,v17,v18,v19,v20
  MTYPE(TKIND),dimension(1:N) :: v21,v22,v23,v24,v25,v26,v27,v28,v29,v30
  MTYPE(TKIND),dimension(1:N) :: v31
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
  v19 = MTYPEFUNC(1,kind=TKIND)
  v20 = MTYPEFUNC(1,kind=TKIND)
  v21 = MTYPEFUNC(1,kind=TKIND)
  v22 = MTYPEFUNC(1,kind=TKIND)
  v23 = MTYPEFUNC(1,kind=TKIND)
  v24 = MTYPEFUNC(1,kind=TKIND)
  v25 = MTYPEFUNC(1,kind=TKIND)
  v26 = MTYPEFUNC(1,kind=TKIND)
  v27 = MTYPEFUNC(1,kind=TKIND)
  v28 = MTYPEFUNC(1,kind=TKIND)
  v29 = MTYPEFUNC(1,kind=TKIND)
  v30 = MTYPEFUNC(1,kind=TKIND)
  v31 = MTYPEFUNC(1,kind=TKIND)
  call init(src);
  call target(red,src,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,&
       v11,v12,v13,v14,v15,v16,v17,v18,v19,v20,&
       v21,v22,v23,v24,v25,v26,v27,v28,v29,v30,v31)
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
