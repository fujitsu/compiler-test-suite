      program main
        call ss()
        print *,'pass'
      end program

      module xx
       integer::i=0
       character(len=20)::c='####################'
      contains
       recursive subroutine sub()
         i=i+1 ; call prt1()
         call sub2()
         i=i+1 ; call prt1()
         return
        entry ent0()
         i=i+1 ; call prt()
         call ent1()
         i=i+1 ; call prt()
         return
        entry ent3()
         i=i+1 ; call prt()
       end subroutine
       subroutine sub2()
         i=i+1 ; call prt1()
         return
        entry ent1()
         i=i+1 ; call prt()
        call ent3()
         i=i+1 ; call prt()
       end subroutine
      end

      subroutine ss()
       use xx
        call ent0()
        call sub()
      end

      subroutine prt()
       use xx
        j=i*1.0
        select case (j)
          case (1)
           print *,c(j:j)
          case (2)
           print *,c(j:j+1)
          case (3)
           print *,c(j:j+2)
          case (4)
           print *,c(j:j+3)
          case (5)
           print *,c(j:j+4)
          case default
           print *,c(1:j)
        end select
      end subroutine

      subroutine prt1()
       use xx
        integer(8)::kk
        kk=0_8
        j=i
        do k=1,j
          kk=kk+1
        enddo
        print *,c(1:kk)
      end subroutine
