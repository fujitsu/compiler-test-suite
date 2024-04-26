      call SUB_PARENT(AA)      
      print *,AA
      end
      SUBROUTINE SUB_PARENT (A)
      REAL A
      call SUB_CHILD_1()
      CONTAINS
        SUBROUTINE SUB_CHILD_1 ()
          CALL SUB_CHILD_2 ()
        END SUBROUTINE SUB_CHILD_1
        SUBROUTINE SUB_CHILD_2 ()
          A = 1
        END SUBROUTINE SUB_CHILD_2
      END SUBROUTINE SUB_PARENT
