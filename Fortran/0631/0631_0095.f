      PROGRAM MAIN

      CALL SUB1
      CALL SUB2
      CALL SUB3
      CALL SUB4
      CALL SUB5
      CALL SUB6
      CALL SUB7
      CALL SUB8
      CALL SUB9
      CALL SUB10
      CALL SUB11
      CALL SUB12
      CALL SUB13
      CALL SUB14
      CALL SUB15
      CALL SUB16
      CALL SUB17
      END

      SUBROUTINE SUB1
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,9
       A(I,J,K)=3.
   10 CONTINUE
      call check(A,3.0)
      RETURN
      contains
	subroutine check(A,r)
        REAL A(10,10,10)
        DO 10 K=1,9
        DO 10 J=1,9
        DO 10 I=1,9
         if( A(I,J,K).ne.r ) stop ' NG1 '
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB2
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
      DO 10 I=1,9
      DO 10 J=1,9
       A(I,J,K)=3.
   10 CONTINUE
      call check(A,3.0)
      RETURN
      contains
	subroutine check(A,r)
        REAL A(10,10,10)
        DO 10 K=1,9
        DO 10 J=1,9
        DO 10 I=1,9
         if( A(I,J,K).ne.r ) stop ' NG2 '
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB3
      REAL A(10,10,10)/1000*0./
      DO 10 I=1,9
      DO 10 J=1,9
      DO 10 K=1,9
       A(I,J,K)=3.
   10 CONTINUE
      call check(A,3.0)
      RETURN
      contains
	subroutine check(A,r)
        REAL A(10,10,10)
        DO 10 K=1,9
        DO 10 J=1,9
        DO 10 I=1,9
         if( A(I,J,K).ne.r ) stop ' NG3 '
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB4
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+.1
   10 CONTINUE
      call check(A,0.1)
      RETURN
      contains
	subroutine check(A,r)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
         if( abs((A(I,J,K)-r)/r) .gt. 0.1e-5 ) stop ' NG4 '
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB5
      REAL A(10,10,10,10)/10000*0./
      DO 10 L=1,9
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K,L+1)=A(I,J,K,L)+.5
   10 CONTINUE
      call check(A,.5)
      RETURN
      contains
	subroutine check(A,r)
        REAL A(10,10,10,10),x
	x=0
        DO 20 L=1,10
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
         if( A(I,J,K,L).ne.x ) then
	   print *,A(i,j,k,l)
	   stop ' NG5 '
         endif
   10   CONTINUE
	x=x+r
   20   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB6
      REAL A(10,10,10,10)/10000*0./
      DO 10 L=1,9
      DO 10 K=1,5
      DO 10 J=1,4
      DO 10 I=1,9
       A(I,J,K,L)=A(I,J,K,L)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10,10)
        DO 10 L=1,10
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	 if( L>9 .or. K>5 .or. J>4 .or. I>9 ) then
           if( A(I,J,K,L)/=.0 ) stop ' NG61 '
	 else
           if( A(I,J,K,L)/=.5 ) stop ' NG62 '
	 endif
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB7
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K+1)+.3
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,9
        DO 10 J=1,10
        DO 10 I=1,10
         if( A(I,J,K).ne.0.3 ) stop 'NG71'
   10   CONTINUE
        DO 20 J=1,10
        DO 20 I=1,10
         if( A(I,J,10).ne.0.0 ) stop 'NG72'
   20   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB8
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K)=A(I,J+1,K+1)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine  check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( K.eq.10 .or. J.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG81'
          else
            if( A(I,J,K) .ne. 0.5 ) then
	      print *,A(I,J,K)
	      stop 'NG82'
            endif
          endif
  10    CONTINUE
	end subroutine
      END

      SUBROUTINE SUB9
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
      DO 10 I=1,9
       A(I,J,K)=A(I+1,J,K)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( I.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG91'
          else
            if( A(I,J,K) .ne. 0.5 ) stop 'NG92'
          endif
   10   CONTINUE
	end subroutine
      END

      SUBROUTINE SUB10
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K+1)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( K.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG101'
          else
            if( A(I,J,K) .ne. 0.5 ) stop 'NG102'
          endif
 10     CONTINUE
	end subroutine
      END

      SUBROUTINE SUB11
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,10
       A(10,J,K)=0.
      DO 10 I=1,9
       A(I,J,K)=A(I,J,K)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( I.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG111'
          else
            if( A(I,J,K) .ne. 0.5 ) stop 'NG112'
          endif
 10     CONTINUE
	end subroutine
      END

      SUBROUTINE SUB12
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
      DO 10 J=1,9
       A(10,J,K)=0.
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( J.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG121'
          else
            if( A(I,J,K) .ne. 0.5 ) stop 'NG122'
          endif
 10     CONTINUE
	end subroutine
      END

      SUBROUTINE SUB13
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,9
       A(10,10,K+1)=0.
      DO 10 J=1,10
      DO 10 I=1,10
       A(I,J,K)=A(I,J,K)+.5
   10 CONTINUE
      call check(A)
      RETURN
      contains
	subroutine check(A)
        REAL A(10,10,10)
        DO 10 K=1,10
        DO 10 J=1,10
        DO 10 I=1,10
	  if( K.eq.10 ) then
            if( A(I,J,K) .ne. 0 ) stop 'NG131'
          else if( j.eq.10.and.i.eq.10 ) then
            if( A(I,J,K) .ne. 0.5 ) stop 'NG133'
          else
            if( A(I,J,K) .ne. 0.5 ) stop 'NG132'
          endif
 10     CONTINUE
	end subroutine
      END

      SUBROUTINE SUB14
      REAL A(10,10,10,10)/10000*0./
      DO 10 L=1,10
      DO 10 K=1,10
      DO 10 J=1,9
      DO 10 I=1,10
       A(I,J,K,L)=A(I,J,K,L)+.1
   10 CONTINUE
      WRITE(6,*) A
      RETURN
      END

      SUBROUTINE SUB15
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
       A(10,10,K)=3.
      DO 10 J=1,10
       A(10,10,K)=A(10,10,K)+1.
      DO 10 I=1,10
       A(I,J,K)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB16
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
       A(10,10,K)=3.
      DO 10 J=1,10
       A(10,10,K)=A(10,10,K)+1.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END

      SUBROUTINE SUB17
      REAL A(10,10,10)/1000*0./
      DO 10 K=1,10
       A(10,10,K)=3.
      DO 10 J=1,10
       A(10,J,K)=A(10,J,K)+1.
      DO 10 I=1,10
       A(I,J,K)=3.
   10 CONTINUE
      WRITE(6,*) A(1,1,1)
      RETURN
      END
