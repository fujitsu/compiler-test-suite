      structure /tag1/
        integer*4 i04(10)
      end structure
      structure /tag2/
        integer*4 i04
      end structure
      record /tag1/ str_a,str_b(10),str_c
      record /tag2/ str_d(10)
      integer*4     ary_a(10),error/0/

      call init(str_a,str_b,str_c,str_d,ary_a)
      i=int(cos(0.0))
      j=i*10

      str_a.i04=str_a.i04(10:1:-1)+1
      call check1(1,str_a,error)
      if(error .eq. 0) then
        write(6,*) '*** ok ***'
      else
        write(6,*) '*** ng ?? ***'
      endif
      stop
      end
      subroutine init(str_a,str_b,str_c,str_d,ary_a)
      structure /tag1/
        integer*4 i04(10)
      end structure
      structure /tag2/
        integer*4 i04
      end structure
      record /tag1/ str_a,str_b(10),str_c
      record /tag2/ str_d(10)
      integer*4     ary_a(10)
      do j=1,10
        str_a%i04(j)=j
        do i=1,10
           str_b(i)%i04(j)=i*10+j
        end do
        str_c%i04(j)=j
        str_d(j)%i04=j
        ary_a(j)=j
      end do
      return
      end
      subroutine check1(item,str_a,error)
      structure /tag1/
        integer*4 i04(10)
      end structure
      record /tag1/ str_a,str_t
      integer*4 item,error,err
      data (str_t%i04(i),i=1,10)/11,10,9,8,7,6,5,4,3,2/

      err=0
      do i=1,10
        if(str_a%i04(i) .ne. str_t%i04(i)) err=err+1
      end do
      if(err .ne. 0) then
        write(6,*) 'item=',item
        write(6,*) 'true   value=',str_t
        write(6,*) 'actual value=',str_a
        error=error+err
      endif
      do i=1,10
        str_a%i04(i)=i
      end do
      return
      end
