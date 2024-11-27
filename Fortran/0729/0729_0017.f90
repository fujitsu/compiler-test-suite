 call s1
 print *,'pass'
 end
 subroutine s1
 call s11
 call s12
 call s14
 call s18
  end
 subroutine s18
 integer,parameter::x=8
 logical(x), dimension(4,3,2) :: mask
 integer(x), dimension(4,2) :: v
 integer(x), dimension(4,3,2) :: arr
 mask=.true.
 arr=5
 arr(4,2,2)=9
 call s11a(mask,v,arr)
 contains
 subroutine s11a(mask,v,arr)
 logical(x), dimension(:,:,:) :: mask
 integer(x), dimension(:,:) :: v
 integer(x), dimension(:,:,:) :: arr
 v=maxval(arr,2,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,2,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 j=2
 v=maxval(arr,j,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,j,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 end subroutine
 end
 subroutine s14
 integer,parameter::x=4
 logical(x), dimension(4,3,2) :: mask
 integer(x), dimension(4,2) :: v
 integer(x), dimension(4,3,2) :: arr
 mask=.true.
 arr=5
 arr(4,2,2)=9
 call s11a(mask,v,arr)
 contains
 subroutine s11a(mask,v,arr)
 logical(x), dimension(:,:,:) :: mask
 integer(x), dimension(:,:) :: v
 integer(x), dimension(:,:,:) :: arr
 v=maxval(arr,2,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,2,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 j=2
 v=maxval(arr,j,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,j,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 end subroutine
 end
 subroutine s12
 integer,parameter::x=2
 logical(x), dimension(4,3,2) :: mask
 integer(x), dimension(4,2) :: v
 integer(x), dimension(4,3,2) :: arr
 mask=.true.
 arr=5
 arr(4,2,2)=9
 call s11a(mask,v,arr)
 contains
 subroutine s11a(mask,v,arr)
 logical(x), dimension(:,:,:) :: mask
 integer(x), dimension(:,:) :: v
 integer(x), dimension(:,:,:) :: arr
 v=maxval(arr,2,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,2,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 j=2
 v=maxval(arr,j,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,j,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 end subroutine
 end
 subroutine s11
 integer,parameter::x=1
 logical(x), dimension(4,3,2) :: mask
 integer(x), dimension(4,2) :: v
 integer(x), dimension(4,3,2) :: arr
 mask=.true.
 arr=5
 arr(4,2,2)=9
 call s11a(mask,v,arr)
 contains
 subroutine s11a(mask,v,arr)
 logical(x), dimension(:,:,:) :: mask
 integer(x), dimension(:,:) :: v
 integer(x), dimension(:,:,:) :: arr
 v=maxval(arr,2,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,2,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 j=2
 v=maxval(arr,j,mask)
 if (v(4,2)/=9)write(6,*) "NG"
 v=maxloc(arr,j,mask)
 if (v(4,2)/=2)write(6,*) "NG"
 if (any(v(:,1)/=1))write(6,*) "NG"
 if (any(v(:3,2)/=1))write(6,*) "NG"
 end subroutine
 end
