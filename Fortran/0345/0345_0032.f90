      subroutine sub0(aa,ii)
       character(len=3)::aa
       integer::ii
       namelist /xyz/ aa,ii
        aa='abc'
        ii=777
      end subroutine

      subroutine sub1(aa,ii)
       character(len=3)::aa
       integer::ii
       namelist /xyz/ aa,ii
        write(20,nml=xyz) 
      end subroutine

      program main
       character(len=3)::aa
       integer::ii
        call sub0(aa,ii) 
        call sub1(aa,ii) 
        print *,'pass'
      end program
