      program main
        call s()
        print *,'pass'
      end program main

      subroutine s()
       interface
         subroutine ss1
         end subroutine ss1
         subroutine ss2
         end subroutine ss2
       end interface
        integer(4),dimension(10)::z1
        integer(4),dimension(10)::z2
        z1=(/(i,i=1,10)/)
        z2=(/(i,i=1,10)/)
        i1=1
        i2=10
        call ss0(ss1,i1,i2,z1)
        call ss0(ss2,i1,i2,z2)
        if ( any( z1 /= (/21,22,23,24,25,26,27,28,29,30/) ) ) print *,'error 1'
        if ( any( z2 /= (/41,42,43,44,45,46,47,48,49,50/) ) ) print *,'error 2'
      end subroutine

      subroutine ss0(proc,i1,i2,zz)
       integer(4),dimension(10)::zz
        call proc(i1,i2,zz)
      end subroutine ss0

      subroutine ss1(i1,i2,z1)
       integer(4),dimension(10)::aa
       integer(4),dimension(10)::z1
        aa = 10
        aa = aa(i1:i2) + z1(i1:i2)
        z1 = aa(i1:i2) + 10
      end subroutine ss1

      subroutine ss2(i1,i2,z2)
       integer(4),dimension(10)::aa
       integer(4),dimension(10)::z2
        aa = 20
        aa = aa(i1:i2) + z2(i1:i2)
        z2 = aa(i1:i2) + 20
      end subroutine ss2
