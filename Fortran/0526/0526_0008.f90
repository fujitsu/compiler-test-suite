       MODULE m1
        TYPE t1
           INTEGER:: x11
           CONTAINS
             PROCEDURE:: t_prc1=>prc1
             PROCEDURE:: t_prc2=>prc2
             PROCEDURE:: t_prc3=>prc3
             GENERIC:: ASSIGNMENT(=) => t_prc1,t_prc2,t_prc3
         END TYPE
         CONTAINS
         SUBROUTINE   prc1(x,y)
          CLASS(t1),INTENT(INOUT)::x
          CLASS(t1),INTENT(IN)::y
           x%x11 = x%x11+y%x11
         END SUBROUTINE
         SUBROUTINE   prc2(x,y)
          CLASS(t1),INTENT(INOUT)::x
          CLASS(t1),INTENT(IN)::y(1)
           x%x11 = x%x11+y(1)%x11+1
         END SUBROUTINE
         SUBROUTINE   prc3(x,y)
          CLASS(t1),INTENT(INOUT)::x
          integer,intent(in)  ::y
           x%x11 = x%x11+y+2
         END SUBROUTINE
        END MODULE
       SUBROUTINE s1
        USE m1
          TYPE(t1):: x32   ,x33
          TYPE(t1):: x22   ,x23(1)
          x32%x11=2
          x33%x11=1
          x32=x33
          if (x32%x11/=3) print *,1001,x32%x11
          x22%x11=2
          x23%x11=1
          x22=x23
          if (x22%x11/=4) print *,1002,x22%x11
          x22%x11=2
          x23%x11=1
          x22=x23
          if (x22%x11/=4) print *,1002,x22%x11
       end
        CALL s1
        print *,'pass'
        END


