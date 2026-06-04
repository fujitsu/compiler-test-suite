       subroutine sub(nn)
       implicit none
       integer(8)::i,nn,n,zero
       real(8)::array(nn)
n=100
      array = 0.0
zero=1000
!$omp parallel private(nn,n,zero)
    n=1
    nn=5
    zero=0
    do concurrent(i=n:nn,mod(i,2)==zero)
      array(i) = array(i) + 1
    end do
!$omp end parallel
    if (sum(array)/=2) print *,201,sum(array)
    end

      integer(8)::nn = 10
call omp_set_num_threads(1)
      call sub(nn)
      print *,'pass'
      end
