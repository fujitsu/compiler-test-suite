  program main
    implicit none
    integer ,dimension(1,1,1,1,1,1,1,5,1,1,1,1,1,1,1) :: a,b
    integer :: ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik,il,im,in,io
    integer :: error = 0

    a(:,1,:,:,1,1,1,:,1,:,1,:,1,:,1) = &
      & reshape((/111,222,333,444,555/),(/1,1,1,5,1,1,1/))
    do 10 ih = 1,5
 10 forall (ia=1:1,ib=1:1,ic=1:1,id=1:1,ie=1:1,if=1:1,ig=1:1, &
           &ii=1:1,ij=1:1,ik=1:1,il=1:1,im=1:1,in=1:1,io=1:1) &
           & b(ia,ib,ic,id,ie,if,ig,ih,ii,ij,ik,il,im,in,io) = &
	   & a(io,in,im,il,ik,ij,ii,ih,ig,if,ie,id,ic,ib,ia)

    do ih = 1,5
      if (all(b(1,:,1,:,1,:,1,ih,1,:,1,:,1,:,1) /= ih*111)) then
        print *, " +++ error : item 1 +++ "
	error = error +1 ;
      endif
    enddo

    do 20 ih = 1,5
 20 where (a(:,:,:,:,:,:,:,ih,:,:,:,:,:,:,:) == ih*111) &
          & b(:,:,:,:,:,:,:,ih,:,:,:,:,:,:,:) = 777

    do ih = 1,5
      if (all(b(1,:,1,:,1,:,1,ih,1,:,1,:,1,:,1) /= 777)) then
        print *, " +++ error : item 2 +++ "
	error = error +1 ;
      endif
    enddo

    if (error == 0) then
      print *, " *** pass *** "
    endif

  end program main
