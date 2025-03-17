      program main
       integer(4)::kk(10),i
        kk=(/1,2,3,4,5,6,7,8,9,10/)
        i=0
        call  s(kk(10),i)
        print *,'pass'
      end program main

      recursive subroutine s(k,i)
       integer(4)::nn(10),mm(10),i
       save::mm
        i=i+1
        mm(i)=0
        nn(:)=i
        do j=1,10
          mm(i)=mm(i)+nn(j)
        enddo
        if (i<k) then
          call s(k,i)
        else
          if (any(mm/=(/10,20,30,40,50,60,70,80,90,100/))) print *,'error ',mm
          return
        endif
      end subroutine s
