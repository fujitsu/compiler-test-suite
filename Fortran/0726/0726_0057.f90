 call s1
 print *,'pass'
 end
     MODULE c
      NAMELIST/d/e
      data e/1/
     END MODULE c

     MODULE a
      CONTAINS
      Subroutine b
        use c
        write(2,d)
      end Subroutine b
     END MODULE a
     MODULE aa
      CONTAINS
      recursive Subroutine bb(i)
        use c
        if (i>5)return
        write(2,d)
        i=i+1
        call bb(i)
      end Subroutine bb
     END MODULE aa
  subroutine s1
   use a
   use aa
   call b
   i=0
   call bb(i)
   call check
  end
  subroutine check
      NAMELIST/d/e
  rewind 2
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
        read(2,d); if (abs(e-1)>0.0001)write(6,*) "NG"
  end
