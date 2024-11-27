    MODULE TestData

        IMPLICIT NONE

        INTEGER, PARAMETER :: stnd = KIND(1.0D0)
        INTEGER :: n
        COMPLEX(stnd), DIMENSION(:,:), ALLOCATABLE :: kernel

    END MODULE TestData

      USE TestData
      IMPLICIT NONE

      INTERFACE
          FUNCTION kernFun(v)
              USE TestData
              IMPLICIT NONE
              COMPLEX(stnd), DIMENSION(:), INTENT(IN) :: v
              COMPLEX(stnd), DIMENSION(SIZE(v)) :: kernFun
          END FUNCTION kernFun
      END INTERFACE

      INTEGER       :: i,j
      COMPLEX(stnd), DIMENSION(:),   ALLOCATABLE :: u,v,w
      COMPLEX(stnd), DIMENSION(:,:), ALLOCATABLE :: x

      n = 6

      ALLOCATE(kernel(n,n),x(n,n),u(n),v(n),w(n),STAT=i)
      IF (i /= 0) STOP

      x = RESHAPE(CMPLX((/(i,i=1,n*n)/),(/(j,j=1,n*n)/)*10,KIND=stnd),(/n,n/))
      u = CMPLX((/(i,i=1,n)/)*3,(/(i,i=1,n)/)*5,KIND=stnd)
      v = MATMUL(x,u)
      WRITE(1,*) ' Main, RHS Vector Control Sum = ',SUM(u)
      WRITE(1,*) ' Main, Matrix     Control Sum = ',SUM(x)
      WRITE(1,*) ' Main, LHS Vector Control Sum = ',SUM(v)

      kernel = x
      w = kernFun(u)

      WRITE(1,*) ' v   : ',v
      WRITE(2,*) w
      call ss1
      end
      subroutine ss1
      complex(8) a(6)
      rewind 2
      read(2,*) a
      if (any(abs(a- &
(/ (-20727.00000000000,15435.00000000000),&
   (-21714.00000000000,16170.00000000000),&
   (-22701.00000000000,16905.00000000000),&
   (-23688.00000000000,17640.00000000000),&
   (-24675.00000000000,18375.00000000000),&
   (-25662.00000000000,19110.00000000000) /) ) > 0.0001_8))write(6,*) "NG"
      print *,'pass'

    END 
    FUNCTION kernFun(vec)

        USE TestData
        IMPLICIT NONE

        COMPLEX(stnd), DIMENSION(:), INTENT(IN) :: vec
        COMPLEX(stnd), DIMENSION(SIZE(vec))     :: kernFun

        kernFun = MATMUL(kernel,vec)

        WRITE(1,*) ' kernFun, RHS Vector Control Sum = ',SUM(vec)
        WRITE(1,*) ' kernFun, Matrix     Control Sum = ',SUM(kernel)
        WRITE(1,*) ' kernFun, LHS Vector Control Sum = ',SUM(kernFun)

        RETURN

    END FUNCTION kernfun
