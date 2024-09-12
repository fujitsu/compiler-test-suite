      MODULE m1
        IMPLICIT NONE
        TYPE x_b
          INTEGER                         :: id  
        CONTAINS
          PROCEDURE  :: get => b_get
        END TYPE
        type,extends(x_b)::x_e
          integer::z
        CONTAINS
          PROCEDURE  :: get => e_get
        end type
        TYPE xx
          class(x_b), POINTER :: p
        END TYPE
      integer::n=1

      CONTAINS
        CHARACTER(len=: ) FUNCTION b_get (d)
          CLASS(x_b)   , INTENT(IN) :: d  
          allocatable::b_get
          integer::k
           b_get='1'
            if(d%id/=1) print *,301
            k=0
            select type(d)
              typeis (x_e)
                 if (d%z/=2) print *,501
            k=1
            end select
            if (k==1) print *,1010
        END FUNCTION
        CHARACTER(len=: ) FUNCTION e_get (d)
          CLASS(x_e)   , INTENT(IN) :: d  
          allocatable::e_get
          integer::k
           e_get='2'
            if(d%id/=1) print *,301
            k=0
            select type(d)
              typeis (x_e)
                 if (d%z/=2) print *,501
            k=1
            end select
            if (k/=1) print *,1010
        END FUNCTION
      END MODULE
      subroutine s1
      use m1
          class(xx  ),pointer   :: g 
          CHARACTER(len=1                    ) :: str
          allocate(g)
            allocate(x_e::g%p)
            select type(pp=>g%p)
              type is(x_e)
               pp%z=2
            end select
            g%p%id=1
            str = g%p%get()
            if(str/='2') print *,90
            deallocate(g%p)
            allocate(g%p)
            select type(pp=>g%p)
              type is(x_e)
               pp%z=2
            end select
            g%p%id=1
            str = g%p%get()
            if(str/='1') print *,190
      end
      call s1
      print *,'pass'
      end
