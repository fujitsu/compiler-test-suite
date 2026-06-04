#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif
#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  integer                        :: ip, color, g
  real                           :: flop, omg, res
  integer, dimension(3)          :: sz = (/20, 10, 10/)
  real, dimension(20, 10, 10)    :: p, src0, src1
  integer, dimension(20, 10, 10) :: bp

  ip = 0
  color = 1
  flop = 0.0
  omg = 1.0
  res = 0.0

  do i = 1, 20
     do j = 1, 10
        do k = 1, 10
           bp(i, j, k)   = 1
           src0(i, j, k) = 1.0
           src1(i, j, k) = 2.0
           p(i, j, k)    = 3.0
        end do
     end do
  end do

  call psor2simd_core(p, sz, g, ip, color, omg, res, src0, src1, bp, flop)
  PRINT_OK  
end program main
#endif

subroutine psor2simd_core (p, sz, g, ip, color, omg, res, src0, src1, bp, flop)
  USE_SIMFUNC
  integer                                                   ::  i, j, k, ix, jx, kx, g, idx, w
  integer, dimension(3)                                     ::  sz
  integer                                                   ::  bc_ndag_T, bc_ndag_B, bc_ndag_N, bc_ndag_S, bc_ndag_E, bc_ndag_W
  integer                                                   ::  Active, bc_diag
  real                                                      ::  omg, dd, ss, dp, res, flop, pp
  real                                                      ::  dd0, dd1, dd2
  real, dimension(20, 10, 10)    ::  p, src0, src1
  integer, dimension(20, 10, 10) ::  bp
  integer                                                   ::  ip, color
  
  parameter ( bc_ndag_T = 17 ) ! FBDefine.h BC_NDAG_T
  parameter ( bc_ndag_B = 16 ) ! FBDefine.h BC_NDAG_B
  parameter ( bc_ndag_N = 15 ) ! FBDefine.h BC_NDAG_N
  parameter ( bc_ndag_S = 14 ) ! FBDefine.h BC_NDAG_S
  parameter ( bc_ndag_E = 13 ) ! FBDefine.h BC_NDAG_E
  parameter ( bc_ndag_W = 12 ) ! FBDefine.h BC_NDAG_W
  
  parameter ( bc_diag = 9 ) ! FBDefine.h BC_DIAG
  parameter ( Active  = 31 ) ! FBDefine.h ACTIVE_BIT    

  ix = 20
  jx = 10
  kx = 10
  w = 0
  
  !$omp parallel private(i, j, k) &
  !$omp        , private(idx) &
  !$omp        , private(ndag_e, ndag_w, ndag_n, ndag_s, ndag_t, ndag_b) &
  !$omp        , private(dd0, dd1, dd2) &
  !$omp        , private(dd, pp, ss, dp)
  !$omp do reduction(+:res, w)
  do k=1,kx
     do j=1,jx
        do i=1+mod(k+j+color+ip,2), ix, 2
           idx = bp(i,j,k)
           
           ndag_e = real(ibits(idx, bc_ndag_E, 1))  ! e, non-diagonal
           ndag_w = real(ibits(idx, bc_ndag_W, 1))  ! w 
           ndag_n = real(ibits(idx, bc_ndag_N, 1))  ! n
           ndag_s = real(ibits(idx, bc_ndag_S, 1))  ! s
           ndag_t = real(ibits(idx, bc_ndag_T, 1))  ! t
           ndag_b = real(ibits(idx, bc_ndag_B, 1))  ! b
     
           dd0 = real(ibits(idx, bc_diag, 1))
           dd1 = real(ibits(idx, bc_diag+1, 1))*2.0
           dd2 = real(ibits(idx, bc_diag+2, 1))*4.0
           dd = 1.0 / (dd0 + dd1 + dd2)  ! diagonal
           
           pp = p(i,j,k)
           ss = ndag_e * p(i,j  ,k  ) &
                + ndag_w * p(i,j  ,k  ) &
                + ndag_n * p(i  ,j,k  ) &
                + ndag_s * p(i  ,j,k  ) &
                + ndag_t * p(i  ,j  ,k) &
                + ndag_b * p(i  ,j  ,k) &
                - src0(i,j,k)             &
                + src1(i,j,k)
           dp = (dd*ss - pp)
           p(i,j,k) = pp + omg*dp
           res = res + dp*dp*real(ibits(idx, Active, 1))
           w = w+1
        end do
     end do
  end do
  !$omp end do
  !$omp end parallel 

  flop = flop + real(w*22)
  
  return
end subroutine psor2simd_core
