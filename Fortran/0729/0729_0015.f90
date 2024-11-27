      logical, dimension(9,8,7,6,5) :: mask5

      integer, dimension(9,8,7,5) :: v5
      integer, dimension(9,8,7,6,5) :: arr5

      arr5=5
      mask5=.true.

      arr5(8,7,6,2,4)=9

      v5=maxval(arr5,4,mask5)
      if (v5(8,7,6,4)/=9)write(6,*) "NG"

      v5=maxloc(arr5,4,mask5)
      if (v5(8,7,6,4)/=2)write(6,*) "NG"
      if (any(v5.ne.1)) then
      else
        write(6,*) "NG"
      endif

      do i1=1,9
      do i2=1,8
      do i3=1,7
      do i4=1,5
      if (v5(i1,i2,i3,i4).ne.1) then
         if (any((/i1,i2,i3,i4/)/=(/8,7,6,4/)))write(6,*) "NG"
      endif
      enddo
      enddo
      enddo
      enddo
      print *,'pass'
      end
