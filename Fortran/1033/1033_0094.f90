      program main
       integer(4)::kk(10),i
       logical::s
        kk=(/1,2,3,4,5,6,7,8,9,10/)
        i=0
        if (s(kk(10),i)) print *,'error ',i
        print *,'pass'
      end program main

      recursive function s(k,i) result(l)
       integer(4)::nn(10),mm(10),i
       logical(4)::l
        i=i+1
        mm(i)=0
        nn(:)=i
        do j=1,10
          mm(i)=mm(i)+nn(j)
        enddo
        l = (mm(i)/=i*10)
        if (i<k) then
          if (s(k,i)) print *,'error ',i
        else
          return
        endif
      end function s
