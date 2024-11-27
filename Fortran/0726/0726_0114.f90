 call s1
 print *,'pass'
 end
 subroutine s1
  real ,dimension(5,5)::a=reshape((/(m,m=1,25)/),(/5,5/)),&
                        b=reshape((/(m,m=1,25)/),(/5,5/))
  real ,dimension(5,5)::aa=reshape((/(m,m=1,25)/),(/5,5/)),&
                        bb=reshape((/(m,m=1,25)/),(/5,5/))
  n=5
    FORALL (I = 2:N-1, J = 2:N-1)
      A(I,J) = A(I,J-1)+A(I,J+1)+A(I-1,J)+A(I+1,J)
      B(I,J) = 1.0/A(I,J)
    END FORALL
      AA(2:N-1,2:N-1) = AA(2:N-1,2-1:N-1-1)+AA(2:N-1,2+1:N-1+1)+AA(2-1:N-1-1,2:N-1)+AA(2+1:N-1+1,2:N-1)
      BB(2:N-1,2:N-1) = 1.0/AA(2:N-1,2:N-1)
   if (any(a/=aa))write(6,*) "NG"
   if (any(b/=bb))write(6,*) "NG"
      end
