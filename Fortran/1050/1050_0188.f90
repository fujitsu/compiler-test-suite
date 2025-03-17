!
!
!
!

program main
  integer::a(10),i,cnt=0
  a = 5
  !$omp parallel
    !$omp do firstprivate(a)
      do i=1,10
        !$omp task
          if (a(i).eq.5) then
            a(i)=a(i)+10
          else
            print *,"NG-1:a(",i,")=",a(i)
          end if
        !$omp end task
        !$omp taskwait
        if (a(i).ne.5) then
          print *,"NG-2:a(",i,")=",a(i)
        end if
      end do
  !$omp end parallel

  do i=1,10
    if (a(i).eq.5) then
      cnt=cnt+1
    else
      print *,"NG-3:a(",i,")=",a(i)
    end if
  end do
  print *,"pass"
end program main
