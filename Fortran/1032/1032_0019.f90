  implicit none
  integer I
  DO  I = 1,18
    IF (I==5 .OR. I==6.OR. I==7) THEN
      write(1,*)" hello", I
    ELSE IF ((I >= 8 .AND. I <=10) .OR. I >=15) THEN
      write(1,*)'goodbye', I
    END IF
  END DO
rewind 1
call x
print *,'pass'
end 
subroutine x
character*100 f
read (1,'(a)') f;if (f/='  hello 5')write(6,*) "NG"
read (1,'(a)') f;if (f/='  hello 6')write(6,*) "NG"
read (1,'(a)') f;if (f/='  hello 7')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 8')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 9')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 10')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 15')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 16')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 17')write(6,*) "NG"
read (1,'(a)') f;if (f/=' goodbye 18')write(6,*) "NG"
end
