      module mod
       character(len=3)::aa
       integer::ii
      contains
       subroutine sub0()
        namelist /xyz/ aa,ii
         aa='abc'
         ii=777
       end subroutine
       subroutine sub1()
        namelist /xyz/ aa,ii
         write(20,nml=xyz) 
       end subroutine
      end module

      program main
       use mod
        call sub0() 
        call sub1() 
        print *,'pass'
      end program
