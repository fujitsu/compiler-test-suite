      integer idim(400,400)
      idim = 1
      num = 399
C
      DO 8 I = 1, num
	idim(I,I) = 1 / idim(I,I)
        DO 8 J = I+1, num
          idim(J,I) = idim(J,I) * idim(I,I)
          DO 8 K = I+1, num
            idim(J,K) = idim(J,K) + idim(J,I) * idim(I,K)
8     CONTINUE

C
      DO 9 I = 1, 100
	idim(I,I) = 1 / idim(I,I)
        DO 9 J = I+1, 100
          idim(J,I) = idim(J,I) * idim(I,I)
          DO 9 K = I+1, 100
            idim(J,K) = idim(J,K) + idim(J,I) * idim(I,K)
9     CONTINUE
      print *,idim
      END
