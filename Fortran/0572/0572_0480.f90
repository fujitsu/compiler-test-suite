TYPE T1
REAL C
END TYPE
 TYPE(T1), POINTER :: R(:,:)
 TYPE(T1), TARGET :: Q(2,3)
  R=>Q
call sub(R)        
        contains
        subroutine sub(x)
        type(T1)  :: x(..)
         call s2(x)

        end subroutine 
        subroutine s2(x)
        class(*) :: x(..)
        if(rank (x) /= 2)print*,102
        end subroutine 
end

