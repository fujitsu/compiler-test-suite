program main
  integer::i
  integer::ck1=0,ck2=0
  integer::sh1=5,sh2=5,sh3=5,sh4=5,sh5=5
  integer::pri1=5,pri2=5
  integer::fp1=5,fp2=5
  integer::red1=5,red2=5
  !$omp parallel shared(sh1,sh2,sh3,sh4,sh5) private(pri1,pri2) firstprivate(fp1,fp2) reduction(+:red1,red2)
    pri1=10
    pri2=10
    red1=red1+10
    red2=red2+10
    !$omp do private(sh2,pri2,fp2,red2,ck2) firstprivate(sh3) lastprivate(sh4) reduction(+:sh5)
    do i=1,10
      sh2=i
      sh4=10
      sh5=sh5+10
      red2=i
      !$omp critical
         ck2=sh5
      !$omp end critical
      pri2=i
      fp2=i
      !$omp task
        if (sh2.eq.i.and.sh3.eq.5.and.sh4.eq.10) then
          !$omp critical
            ck1=ck1+1
            sh1=sh1+1
          !$omp end critical
            sh2=sh2+1
            sh3=sh3+1
            sh4=sh4+1
            sh5=sh5+1
        else
          print *,"NG-1(",i,":sh2=",sh2," sh3=",sh3," sh4=",sh4
        end if
        if (pri1.eq.10.and.pri2.eq.i) then
          pri1=pri1+1
          pri2=pri2+1
        else
          print *,"NG-1(",i,":pri1=",pri1," pri2=",pri2
        end if
        if (fp1.eq.5.and.fp2.eq.i) then
          fp1=fp1+1
          fp2=fp2+1
        else
          print *,"NG-1(",i,":fp1=",fp1," fp2=",fp2
        end if
        if (red1.eq.10.and.red2.eq.i) then
          red1=red1+i
          red2=red2+i
        else
          print *,"NG-1(",i,":red1=",red1,"red2=",red2
        end if
      !$omp end task
      if (sh2.ne.i.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.ck2) then
        print *,"NG-2(",i,":sh2=",sh2," sh3=",sh3," sh4=",sh4," sh5=",sh5," ck2=",ck2
      end if
      if (pri2.ne.i) then
        print *,"NG-2(",i,":pri2=",pri2
      end if
      if (fp2.ne.i) then
        print *,"NG-2(",i,"):fp2=",fp2
      end if
      if (red2.ne.i) then
        print *,"NG-2(",i,"):red2=",red2
      end if
    end do
    if (sh2.ne.5.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.105) then
      print *,"NG-3:sh2=",sh2," sh3=",sh3," sh4=",sh4," sh5=",sh5
    end if
    if (pri1.ne.10.or.pri2.ne.10) then
      print *,"NG-3:pri1=",pri1," pri2=",pri2
    end if
    if (fp1.ne.5.or.fp2.ne.5) then
      print *,"NG-3:fp1=",fp1," fp2=",fp2
    end if
  !$omp end parallel
  if (sh1.ne.5+ck1.or.sh1.ne.15) then
     print *,"NG-4:sh1=",sh1
  end if
  call sub1()
  print *,"pass"
end program main

subroutine sub1()
save
  integer::i
  integer::ck1=0,ck2=0
  integer::sh1=5,sh2=5,sh3=5,sh4=5,sh5=5
  integer::pri1=5,pri2=5
  integer::fp1=5,fp2=5
  integer::red1=5,red2=5
  !$omp parallel shared(sh1,sh2,sh3,sh4,sh5) private(pri1,pri2) firstprivate(fp1,fp2) reduction(+:red1,red2)
    pri1=10
    pri2=10
    red1=red1+10
    red2=red2+10
    !$omp do private(sh2,pri2,fp2,red2,ck2) firstprivate(sh3) lastprivate(sh4) reduction(+:sh5)
    do i=1,10
      sh2=i
      sh4=10
      sh5=sh5+10
      red2=i
      !$omp critical
         ck2=sh5
      !$omp end critical
      pri2=i
      fp2=i
      !$omp task
        if (sh2.eq.i.and.sh3.eq.5.and.sh4.eq.10) then
          !$omp critical
            ck1=ck1+1
            sh1=sh1+1
          !$omp end critical
            sh2=sh2+1
            sh3=sh3+1
            sh4=sh4+1
            sh5=sh5+1
        else
          print *,"NG-1s(",i,"):sh2=",sh2," sh3=",sh3," sh4=",sh4
        end if
        if (pri1.eq.10.and.pri2.eq.i) then
          pri1=pri1+1
          pri2=pri2+1
        else
          print *,"NG-1s(",i,"):pri1=",pri1," pri2=",pri2
        end if
        if (fp1.eq.5.and.fp2.eq.i) then
          fp1=fp1+1
          fp2=fp2+1
        else
          print *,"NG-1s(",i,"):fp1=",fp1," fp2=",fp2
        end if
        if (red1.eq.10.and.red2.eq.i) then
          red1=red1+i
          red2=red2+i
        else
          print *,"NG-1s(",i,"):red1=",red1,"red2=",red2
        end if
      !$omp end task
      if (sh2.ne.i.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.ck2) then
        print *,"NG-2s(",i,"):sh2=",sh2," sh3=",sh3," sh4=",sh4," sh5=",sh5," ck2=",ck2
      end if
      if (pri2.ne.i) then
        print *,"NG-2s(",i,"):pri2=",pri2
      end if
      if (fp2.ne.i) then
        print *,"NG-2s(",i,"):fp2=",fp2
      end if
      if (red2.ne.i) then
        print *,"NG-2s(",i,"):red2=",red2
      end if
    end do
    if (sh2.ne.5.or.sh3.ne.5.or.sh4.ne.10.or.sh5.ne.105) then
      print *,"NG-3s:sh2=",sh2," sh3=",sh3," sh4=",sh4," sh5=",sh5
    end if
    if (pri1.ne.10.or.pri2.ne.10) then
      print *,"NG-3s:pri1=",pri1," pri2=",pri2
    end if
    if (fp1.ne.5.or.fp2.ne.5) then
      print *,"NG-3s:fp1=",fp1," fp2=",fp2
    end if
  !$omp end parallel
  if (sh1.ne.5+ck1.or.sh1.ne.15) then
     print *,"NG-4s:sh1=",sh1
  end if
end 
