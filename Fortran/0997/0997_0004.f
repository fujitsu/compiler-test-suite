           REAL ,PARAMETER::foobar=-3.5D-67
           parameter (i=1-1)
           END
           subroutine sub001()
           REAL ,PARAMETER::foobar=-3.5D-67
           INTEGER*2 B(1)
           end
           subroutine sub002()
           REAL ,PARAMETER::foobar=-3.5D-67
           INTEGER*2 B(1)
           end
           subroutine sub003()
           REAL ,PARAMETER::foobar=-3.5D-67
           parameter (j=1.0)
           INTEGER*2 B(1)
           end
           subroutine sub004()
           REAL ,PARAMETER::foobar=-3.5D-67
           I=1+1
           end
           subroutine sub005()
           REAL ,PARAMETER::foobar=-3.5D-67
           common /com1/ i,a(1,1)
           end
           subroutine sub006()
           REAL ,PARAMETER::foobar=-3.5D-67
           integer a(1,1)
           end
