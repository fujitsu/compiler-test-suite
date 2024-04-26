      integer*4 i4_1,i4_2,i4_3
      integer*8 i8_1,i8_2,i8_3
      integer*8 i,j,k,l,m,n,o,p,q
      integer*4 a(10,10,10),b(10,10,10),c(10,10,10)
      integer*4 before_a(10,10,10),before_b(10,10,10),before_c(10,10,10)
      integer*4 normal_a(10,10,10),normal_b(10,10,10),normal_c(10,10,10)
c
      l=10;m=10;n=10;o=1;p=1;q=1
      do i=1,10
        do j=1,10
          do k=1,10
	    a(i,j,k) = k; b(i,j,k) = j; c(i,j,k) = i
          enddo
        enddo
      enddo

      before_a = a; before_b = b; before_c = c
          do k=1,10
        do j=1,10
      do i=1,10
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i4_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a(i4_1,i4_2,i4_3) = 
     1	    a(i4_1,i4_2,i4_3)+b(i4_1,i4_2,i4_3)+c(i4_1,i4_2,i4_3)
	    b(i4_1,i4_2,i4_3) =
     1	    b(i4_1,i4_2,i4_3)+c(i4_1,i4_2,i4_3)+a(i4_1,i4_2,i4_3)
	    c(i4_1,i4_2,i4_3) =
     1	    c(i4_1,i4_2,i4_3)+a(i4_1,i4_2,i4_3)+b(i4_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-1 : end"

      before_a = a; before_b = b; before_c = c
          do k=1,l
        do j=1,10
      do i=1,10
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i4_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a(i4_1,i4_2,i8_3) = 
     1	    a(i4_1,i4_2,i8_3)+b(i4_1,i4_2,i8_3)+c(i4_1,i4_2,i8_3)
	    b(i4_1,i4_2,i8_3) =
     1	    b(i4_1,i4_2,i8_3)+c(i4_1,i4_2,i8_3)+a(i4_1,i4_2,i8_3)
	    c(i4_1,i4_2,i8_3) =
     1	    c(i4_1,i4_2,i8_3)+a(i4_1,i4_2,i8_3)+b(i4_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-2 : end"

      before_a = a; before_b = b; before_c = c
          do k=1,l
        do j=1,m
      do i=1,10
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i4_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a(i4_1,i8_2,i4_3) = 
     1	    a(i4_1,i8_2,i4_3)+b(i4_1,i8_2,i4_3)+c(i4_1,i8_2,i4_3)
	    b(i4_1,i8_2,i4_3) =
     1	    b(i4_1,i8_2,i4_3)+c(i4_1,i8_2,i4_3)+a(i4_1,i8_2,i4_3)
	    c(i4_1,i8_2,i4_3) =
     1	    c(i4_1,i8_2,i4_3)+a(i4_1,i8_2,i4_3)+b(i4_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-3 : end"

      before_a = a; before_b = b; before_c = c
          do k=1,l
        do j=1,m
      do i=1,n
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i4_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a(i4_1,i8_2,i8_3) = 
     1	    a(i4_1,i8_2,i8_3)+b(i4_1,i8_2,i8_3)+c(i4_1,i8_2,i8_3)
	    b(i4_1,i8_2,i8_3) =
     1	    b(i4_1,i8_2,i8_3)+c(i4_1,i8_2,i8_3)+a(i4_1,i8_2,i8_3)
	    c(i4_1,i8_2,i8_3) =
     1	    c(i4_1,i8_2,i8_3)+a(i4_1,i8_2,i8_3)+b(i4_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-4 : end"

      before_a = a; before_b = b; before_c = c
          do k=o,l
        do j=1,m
      do i=1,n
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i8_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a(i8_1,i4_2,i4_3) = 
     1	    a(i8_1,i4_2,i4_3)+b(i8_1,i4_2,i4_3)+c(i8_1,i4_2,i4_3)
	    b(i8_1,i4_2,i4_3) =
     1	    b(i8_1,i4_2,i4_3)+c(i8_1,i4_2,i4_3)+a(i8_1,i4_2,i4_3)
	    c(i8_1,i4_2,i4_3) =
     1	    c(i8_1,i4_2,i4_3)+a(i8_1,i4_2,i4_3)+b(i8_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-5 : end"

      before_a = a; before_b = b; before_c = c
          do k=o,l
        do j=p,m
      do i=1,n
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i8_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a(i8_1,i4_2,i8_3) = 
     1	    a(i8_1,i4_2,i8_3)+b(i8_1,i4_2,i8_3)+c(i8_1,i4_2,i8_3)
	    b(i8_1,i4_2,i8_3) =
     1	    b(i8_1,i4_2,i8_3)+c(i8_1,i4_2,i8_3)+a(i8_1,i4_2,i8_3)
	    c(i8_1,i4_2,i8_3) =
     1	    c(i8_1,i4_2,i8_3)+a(i8_1,i4_2,i8_3)+b(i8_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-6 : end"

      before_a = a; before_b = b; before_c = c
          do k=o,l
        do j=p,m
      do i=q,n
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i8_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a(i8_1,i8_2,i4_3) = 
     1	    a(i8_1,i8_2,i4_3)+b(i8_1,i8_2,i4_3)+c(i8_1,i8_2,i4_3)
	    b(i8_1,i8_2,i4_3) =
     1	    b(i8_1,i8_2,i4_3)+c(i8_1,i8_2,i4_3)+a(i8_1,i8_2,i4_3)
	    c(i8_1,i8_2,i4_3) =
     1	    c(i8_1,i8_2,i4_3)+a(i8_1,i8_2,i4_3)+b(i8_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-7 : end"

      before_a = a; before_b = b; before_c = c
          do k=o,l
        do j=p,m
      do i=q,n
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      normal_a = a; normal_b = b; normal_c = c
      a = before_a; b = before_b; c = before_c
      do i8_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a(i8_1,i8_2,i8_3) = 
     1	    a(i8_1,i8_2,i8_3)+b(i8_1,i8_2,i8_3)+c(i8_1,i8_2,i8_3)
	    b(i8_1,i8_2,i8_3) =
     1	    b(i8_1,i8_2,i8_3)+c(i8_1,i8_2,i8_3)+a(i8_1,i8_2,i8_3)
	    c(i8_1,i8_2,i8_3) =
     1	    c(i8_1,i8_2,i8_3)+a(i8_1,i8_2,i8_3)+b(i8_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-8 : end"

      end
c
c
c
      subroutine ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      integer*4 a(10,10,10),b(10,10,10),c(10,10,10)
      integer*4 normal_a(10,10,10),normal_b(10,10,10),normal_c(10,10,10)
      integer*4 error
      error = 0
      do i=1,10
        do j=1,10
          do k=1,10
	    if(a(i,j,k) .ne. normal_a(i,j,k)) error =error+1
	    if(b(i,j,k) .ne. normal_b(i,j,k)) error =error+1
	    if(c(i,j,k) .ne. normal_c(i,j,k)) error =error+1
          enddo
        enddo
      enddo
      if( error .gt. 0 ) then
        print *,"*** NG ***"
      else
        print *,"*** OK ***"
      endif
      end
