 call s1
 print *,'pass'
 end
 subroutine s1
      logical, dimension(4,3,2) :: mask
      integer, dimension(4,2) :: v
      integer, dimension(4,3,2) :: arr
      mask=.true.
      arr=5
      arr(4,2,2)=9
      v=maxval(arr,2,mask)
      if (v(4,2)/=9)write(6,*) "NG"
      v=maxloc(arr,2,mask)
      if (v(4,2)/=2)write(6,*) "NG"
      if (any(v(:,1)/=1))write(6,*) "NG"
      if (any(v(:3,2)/=1))write(6,*) "NG"
      j=2
      end
