      interface
        recursive function fun(i) result(j)
          integer(4)::i,j
          intent(in)::i
        end function
      endinterface
      i=0
!$omp parallel firstprivate(i),private(j)
      j=fun(i)
      if (j/=100) write(6,*) "NG"
!$omp endparallel
      print *,'pass'
      end

      recursive function fun(i) result(j)
      integer(4)::i,j
      intent(in)::i
      j=i
      if (j>=100) then
        return
      endif
      do k=1,10
        j=j+1
        if (k==10) j=fun(j)
      enddo
      end function
