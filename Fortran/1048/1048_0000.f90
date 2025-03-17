      program main
        use omp_lib
        integer*4 :: CCC(10)
        integer*8 :: ddd(5)
        common /C_DATA/CCC
        common /D_data/ddd
        bind ( c ) :: /C_DATA/
        CCC(:)=0
        ddd(:)=0
!$omp parallel
!$omp   master
          ddd(1) = omp_get_num_threads()
!$omp   end master
!$omp   critical
          CCC(1) = CCC(1)+1
!$omp   end critical
!$omp   critical(aaa)
          CCC(2) = CCC(2)+1
!$omp   end critical(aaa)
!$omp   critical(BBB)
          CCC(3) = CCC(3)+1
!$omp   end critical(BBB)
!$omp end parallel
        if( CCC(1) == ddd(1) .and. &
            CCC(2) == ddd(1) .and. &
            CCC(3) == ddd(1) ) then
          print *,'OK'
        else
          print *,'NG(',ddd(1),'):',CCC(1),CCC(2),CCC(3)
        end if
      end program main
