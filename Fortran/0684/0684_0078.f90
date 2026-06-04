CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
   integer,parameter ::leng=32,chart_elm=5,mem=10
   TYPE ELEMENT
      REAL ELEMENT_WT(5)
      CHARACTER (leng), POINTER,dimension(:) :: NAME
   END TYPE ELEMENT
   TYPE(ELEMENT) CHART(chart_elm)
   REAL WEIGHTS (mem)
   CHARACTER (leng), TARGET :: NAMES (mem)
!$omp parallel default(private)
   names='0123456789'
   names(:)(1:1)=(/'a','b','c','d','e','f','g','h','i','k'/)
   WEIGHTS=(/11.,1.,12.,1.,13.,14.,15.,16.,1.,17./)/10.
   N=1
   do I=1,chart_elm
     nullify(CHART(I) % NAME)
     CHART(I) % ELEMENT_WT=-1.
   end do
   FORALL (I = 1:chart_elm, WEIGHTS (I + N - 1) > .5)
      CHART(I) % ELEMENT_WT = WEIGHTS (I + N - 1)
      CHART(I) % NAME => NAMES (I + N - 1:I + N - 1)
   END FORALL
!$omp do
   do I=1,chart_elm
     if (WEIGHTS (I + N - 1) > .5) then
         if (any(CHART(I) % ELEMENT_WT /= WEIGHTS (I + N - 1)))print *,"fail"
         if (any(CHART(I) % NAME /= NAMES (I + N - 1)) )print *,"fail"
     else
         if (associated(CHART(I) % NAME))print *,"fail"
         if (any(CHART(I) % ELEMENT_WT/=-1.))print *,"fail"
     endif
   end do
!$omp end do
!$omp end parallel
      END
