CALL OMP_SET_NUM_THREADS(1)
 call s1
 call s2
 call s3
 print *,'pass'
 end
 subroutine s1
 INTEGER :: A(5,5),Ax(5,5)=reshape((/(1,0,2,mm=1,9)/),(/5,5/))
!$omp parallel default(private) shared(ax)
a=ax
FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   END WHERE
END FORALL
!$omp end parallel
      END
 subroutine s2
 INTEGER :: A(5,5),Ax(5,5)=reshape((/(1,0,2,mm=1,9)/),(/5,5/))
!$omp parallel default(private) shared(ax)
a=ax
FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   END WHERE
END FORALL
!$omp end parallel
      END
 subroutine s3
 INTEGER :: A(5,5),Ax(5,5)=reshape((/(1,0,2,mm=1,9)/),(/5,5/))
!$omp parallel default(private) shared(ax)
a=ax
FORALL (I = 1:5)
   WHERE (A(I,:) .EQ. 0)
      A(:,I) = I
   END WHERE
END FORALL
!$omp end parallel
      END
