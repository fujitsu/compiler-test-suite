      program main
       common /com/i,mm
       integer(4)::kk(10),i,mm(10)
        kk=(/1,2,3,4,5,6,7,8,9,10/)
        i=0
        call  s(kk(10))
        print *,'pass'
      end program main

      recursive subroutine s(k)
       common /com/i,mm
       integer(4)::nn(10),i,mm(10)
        i=i+1
        mm(i)=0
        nn(:)=i
        mm(i)=sum(nn)
        if (i<k) then
          call s(k)
        else
          if (any(mm/=(/10,20,30,40,50,60,70,80,90,100/))) print *,'error ',mm
          return
        endif
      end subroutine s
