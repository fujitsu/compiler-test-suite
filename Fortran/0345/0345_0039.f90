      module mod
       character(len=3)::aa
       integer::ii
      contains
       function fun0()
        namelist /xyz/ aa,ii
         aa='abc'
         ii=777
         fun0=0.0
         rr = fun1(aa,ii) 
       end function
      end module

      function fun1(aa,ii)
       character(len=3)::aa
       namelist /xyz/ aa,ii
        write(20,nml=xyz) 
        fun1=0.0
      end function

      program main
       use mod
        rr = fun0() 
        print *,'pass'
      end program
