
      INTEGER aa(10)/10*0/
      INTEGER bb(10)/10*0/
      complex cc(10)/10*0/
      DO i=1,10
         aa(i)=3
         IF ( cc(i) .EQ. 2 .or. cc(i) .ne.5)
     +        bb(i)= 2
      enddo

      DO i=1,10
         aa(i)=aa(i)+3
         IF ( cmplx(2.,3.) .EQ. 2 .or. .true.)
     +        bb(i)= bb(i) + 2
      enddo

      s = aa(2)
      t = aa(6)
      DO i=1,10
         aa(i)=aa(i) + 3
         IF ( cmplx(2.,3.) .EQ. 2 .or. s.eq.t)
     +        bb(i)= bb(i) + 2
      enddo

      DO i=1,10
         aa(i)=aa(i) + 3
         IF ( .true. .or. cmplx(2.,3.) .EQ. 2 )
     +        bb(i)= bb(i) + 2
      enddo

      do i=1,10
         if (aa(i).ne.12 .or. bb(i).ne.8) goto 10
      enddo
      write(6,*) ' ## OK ## '
      goto 20
 10   write(6,*) ' ## NG ## '
      write(6,*) aa,bb
 20   continue
      END


