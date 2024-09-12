       MODULE m1
        TYPE t1
           INTEGER:: x11
           CONTAINS
             PROCEDURE:: t_prc=>prc
             GENERIC:: ASSIGNMENT(=) => t_prc
         END TYPE
         CONTAINS
         SUBROUTINE   prc(x,y)
          CLASS(t1),INTENT(INOUT)::x
          CLASS(t1),INTENT(IN)::y
           x%x11 = x%x11+y%x11
         END SUBROUTINE
        END MODULE
       SUBROUTINE s1
        USE m1
          TYPE(t1):: x22,x23
          x22%x11=2
          x23%x11=1
          x22=x23
          if (x22%x11/=3) print *,1002,x22%x11
       end
        CALL s1
        print *,'pass'
        END


