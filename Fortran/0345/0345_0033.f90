      function sub0(aa,ii)
        character(len=3)::aa
        integer::ii
        namelist /xyz/ aa,ii
         aa='abc'
         ii=777
         sub0=0.0
      end function
      function sub1(aa,ii)
        character(len=3)::aa
        integer::ii
        namelist /xyz/ aa,ii
         write(21,nml=xyz)
         sub1=0.0
      end function

      program main
        character(len=3)::aa
        integer::ii
        rr = sub0(aa,ii)
        rr = sub1(aa,ii)
        print *,'pass'
      end program
