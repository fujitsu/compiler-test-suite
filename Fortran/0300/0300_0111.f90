        use omp_lib
        integer(kind=omp_lock_kind) lock, lock2
        integer cnt, cnt2, num_thr, nst_thr
        integer,parameter :: loop = 1000

        cnt = 0
        cnt2 = 0

        call omp_init_lock(lock)

        !$omp parallel shared(cnt)
                do i = 1, loop
                        call omp_set_lock(lock)
                                cnt = cnt + 1
                        call omp_unset_lock(lock)
                enddo
        !$omp end parallel
        print *, cnt
        end

