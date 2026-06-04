      subroutine s1
       integer:: a
        !$omp parallel private(a)
          write(1,'(z16.16)')loc(a)
      !$omp end parallel
      call chk
      end
      call s1
      print *,'pass'
      end
      subroutine chk
      character::c
      rewind 1
      read(1,'(a)') c
      read(1,'(a)',end=10) c
      print *,1001
   10 end
