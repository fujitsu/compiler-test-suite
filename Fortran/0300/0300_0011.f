      integer thr_num
      thr_num = 3
      call autp2(thr_num)
      end

      subroutine autp2(thr_num)
        integer thr_num

          do i = 1, thr_num
            call sub2(thr_num)
          enddo
      end

      subroutine sub2(thr_num)
        integer thr_num
        print*, thr_num
      end
