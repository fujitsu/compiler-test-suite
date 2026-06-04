        subroutine s1()
         integer :: ip2 = 20
         integer :: arr(2) = 4
         integer, external :: omp_get_thread_num
         !$omp parallel default(none)
           do concurrent(ip=0:1)
           end do
         !$omp end parallel
         !$omp parallel shared(arr) default(none)
          if(omp_get_thread_num() .eq. 1) then
           do concurrent(ip2=1:2)
                arr(ip2) = ip2+1
           end do
          end if
         !$omp end parallel
          if(any(arr /= [2,3]))print*,"122"
          if(ip2 .ne. 20) print*,"121"
         end subroutine
        call s1()
        print *,'pass'
        end

