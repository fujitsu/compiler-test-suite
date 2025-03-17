!
!
!
!

module shvar
  implicit none
  integer::sh1=5,sh2=5,sh3=5,sh4=5,sh5=5
  integer::ck1=0
end module shvar

program main
  use shvar
  implicit none
  !$omp parallel
    call sub(5,5)
  !$omp end parallel

  if (sh1.ne.7) then
    print *,"NG:sh1=",sh1
  end if
  print *,"pass"
end program main

subroutine sub(fp1,fp2)
  use shvar
  implicit none
  integer::pri1,pri2
  integer::fp1,fp2
  pri1=5
  pri2=5
  !$omp sections private(sh2,pri2,fp2) firstprivate(sh3) lastprivate(sh4) reduction(+:sh5)
    sh2=10
    sh4=10
    sh5=sh5+10
    !$omp critical
      ck1=sh5
      pri2=10
    !$omp end critical
    fp2=10
    !$omp task firstprivate(ck1)
      if (sh2.eq.10.and.sh3.eq.5.and.sh4.eq.10.and.sh5.eq.ck1) then
        !$omp critical
          sh1=sh1+1
        !$omp end critical
          sh2=sh2+1
          sh3=sh3+1
          sh4=sh4+1
          sh5=sh5+1
      else
        print *,"NG-01:sh1=",sh1," sh2=",sh2," sh3=",sh3
        print *,"     :sh4=",sh4," sh5=",sh5," ck1=",ck1
      end if
      if (pri1.eq.5.and.pri2.eq.10) then
        pri1=pri1+1
        pri2=pri2+1
      else
        print *,"NG-02:pri1=",pri1," pri2=",pri2
      end if  
      if (fp1.eq.5.and.fp2.eq.10) then
        fp1=fp1+1
        fp2=fp2+1
      else
        print *,"NG-03:fp1=",fp1," fp2=",fp2
      end if
    !$omp end task
    if (sh2.ne.10.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.ck1) then
      print *,"NG-04:sh2=",sh2," sh3=",sh3," sh4=",sh4
    end if
    if (pri1.ne.5.or.pri2.ne.10) then
      print *,"NG-05:pri1=",pri1," pri2=",pri2
    end if
    if (fp1.ne.5.or.fp2.ne.10) then
      print *,"NG-06:fp1=",fp1," fp2=",fp2
    end if
    !$omp section
      sh2=10
      sh4=10
      sh5=sh5+10
      !$omp critical
        ck1=sh5
        pri2=10
      !$omp end critical
      fp2=10
      !$omp task
        if (sh2.eq.10.and.sh3.eq.5.and.sh4.eq.10.and.sh5.eq.ck1) then
          !$omp critical
            sh1=sh1+1
          !$omp end critical
            sh2=sh2+1
            sh3=sh3+1
            sh4=sh4+1
            sh5=sh5+1
        else
          print *,"NG-07:sh1=",sh1," sh2=",sh2," sh3=",sh3
          print *,"     :sh4=",sh4," sh5=",sh5," ck1=",ck1
        end if
        if (pri1.eq.5.and.pri2.eq.10) then
          pri1=pri1+1
          pri2=pri2+1
        else
          print *,"NG-08:pri1=",pri1," pri2=",pri2
        end if  
        if (fp1.eq.5.and.fp2.eq.10) then
          fp1=fp1+1
          fp2=fp2+1
        else
          print *,"NG-09:fp1=",fp1," fp2=",fp2
        end if
      !$omp end task
      if (sh2.ne.10.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.ck1) then
        print *,"NG-10:sh2=",sh2," sh3=",sh3," sh4=",sh4
      end if
      if (pri1.ne.5.or.pri2.ne.10) then
        print *,"NG-11:pri1=",pri1," pri2=",pri2
      end if
      if (fp1.ne.5.or.fp2.ne.10) then
        print *,"NG-12:fp1=",fp1," fp2=",fp2
      end if
  !$omp end sections
  if (sh2.ne.5.or.sh2.ne.5.or.sh4.ne.10) then
    print *,"NG-13:sh2=",sh2," sh3=",sh3," sh4=",sh4
  end if
  if (pri1.ne.5.or.pri2.ne.5) then
    print *,"NG-14:pri1=",pri1," pri2=",pri2
  end if
  if (fp1.ne.5.or.fp2.ne.5) then
    print *,"NG-15:fp1=",fp1," fp2=",fp2
  end if
end subroutine sub
