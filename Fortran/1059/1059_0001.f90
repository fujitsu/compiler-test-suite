      interface
        recursive function fun(i) result(j)
          integer(4)::i,j
          intent(in)::i
        end function
      endinterface
      integer(4)::OMP_GET_THREAD_NUM
      i=0
      call OMP_SET_DYNAMIC(.false.)
      call OMP_SET_NUM_THREADS(5)
!$omp parallel firstprivate(i),private(j,num)
      j=fun(i)
      num=OMP_GET_THREAD_NUM()
      if (num==0) then
        if (j/=100) write(6,*) "NG"
      elseif(num==1) then
        if (j/=200) write(6,*) "NG"
      elseif(num==2) then
        if (j/=300) write(6,*) "NG"
      elseif(num==3) then
        if (j/=400) write(6,*) "NG"
      elseif(num==4) then
        if (j/=500) write(6,*) "NG"
      endif
!$omp endparallel
      print *,'pass'
      end

      recursive function fun(i) result(j)
      integer(4)::i,j
      intent(in)::i
      integer(4)::OMP_GET_THREAD_NUM
      j=i
      if (j>=(OMP_GET_THREAD_NUM()+1)*100) then
        return
      endif
      do k=1,10
        j=j+1
        if (k==10) j=fun(j)
      enddo
      end function
