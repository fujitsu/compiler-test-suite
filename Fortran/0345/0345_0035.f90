      module mod
       character(len=3)::aa
       integer::ii
      contains
       function sub0()
        namelist /xyz/ aa,ii
         aa='abc'
         ii=777
         sub0=0.0
       end function
       function sub1()
        namelist /xyz/ aa,ii
         write(23,nml=xyz)
         sub1=0.0
       end function
      end module

      program main
       use mod
        rr = sub0()
        rr = sub1()
        print *,'pass'
      end program
