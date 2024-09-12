      integer*4::n1=30,n2=42,n3=99,rslt=6
      do while(n3 .ne. 0)
        call sub1(n1,n2,n3)
      end do
      compare_arg:selectcase(n1 .eq. rslt)
        case(.true.)
         write(6,*) '*** ok ***'
        case(.false.)
         write(6,*) '*** ng ***'
      end select compare_arg
      stop
      end

      subroutine sub1(n1,n2,n3)
      check_0_1st_arg:select case(n1)
        case(0)
          n3=0
        case default
          check_0_2nd_arg:select case(n2)
            case(0)
              n3=0
            case default
              compare_arg:select case(n1-n2)
                case(0)
                  n3=n1
                case(1:)
                  n3=n2
                  n2=mod(n1,n2)
                  n1=n3
                case(:-1)
                  n2=mod(n2,n1)
              end select compare_arg
          end select check_0_2nd_arg
      end select check_0_1st_arg
      end
