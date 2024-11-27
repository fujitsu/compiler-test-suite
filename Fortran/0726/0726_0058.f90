 call s1
 print *,'pass'
 end
     MODULE c
      NAMELIST/d/e
      data e/2/
     END MODULE c

     MODULE a
        use c
      CONTAINS
      Subroutine b
        write(1,d)
      end Subroutine b
     END MODULE a
     MODULE aa
        use c
      CONTAINS
      recursive Subroutine bb(i)
        if (i>5)return
        write(1,d)
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
  rewind 1
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
        read(1,d); if (abs(e-2)>0.0001)write(6,*) "NG"
  end
