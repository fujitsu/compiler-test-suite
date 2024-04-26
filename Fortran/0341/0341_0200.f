      integer*4 i,j,k
      integer*4 i4_1,i4_2,i4_3
      integer*8 i8_1,i8_2,i8_3
      integer*4 l,m,n,o,p,q
      integer*4 a_4(10,10,10),b_4(10,10,10),c_4(10,10,10)
      integer*4 before_a_4(10,10,10),before_b_4(10,10,10),
     1 before_c_4(10,10,10)
      integer*4 normal_a_4(10,10,10),normal_b_4(10,10,10),
     1 normal_c_4(10,10,10)
      integer*8 a_8(10,10,10),b_8(10,10,10),c_8(10,10,10)
      integer*8 before_a_8(10,10,10),before_b_8(10,10,10),
     1 before_c_8(10,10,10)
      integer*8 normal_a_8(10,10,10),normal_b_8(10,10,10),
     1 normal_c_8(10,10,10)

c
      l=10;m=10;n=10;o=1;p=1;q=1
      do i=1,10
        do j=1,10
          do k=1,10
	    a_4(i,j,k) = k; b_4(i,j,k) = j; c_4(i,j,k) = i
	    a_8(i,j,k) = k; b_8(i,j,k) = j; c_8(i,j,k) = i
          enddo
        enddo
      enddo

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=1,10
        do j=1,10
      do i=1,10
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i4_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a_4(i4_1,i4_2,i4_3) = 
     1	    a_4(i4_1,i4_2,i4_3)+b_4(i4_1,i4_2,i4_3)+c_4(i4_1,i4_2,i4_3)
	    b_4(i4_1,i4_2,i4_3) =
     1	    b_4(i4_1,i4_2,i4_3)+c_4(i4_1,i4_2,i4_3)+a_4(i4_1,i4_2,i4_3)
	    c_4(i4_1,i4_2,i4_3) =
     1	    c_4(i4_1,i4_2,i4_3)+a_4(i4_1,i4_2,i4_3)+b_4(i4_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-1 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=1,l
        do j=1,10
      do i=1,10
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i4_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a_4(i4_1,i4_2,i8_3) = 
     1	    a_4(i4_1,i4_2,i8_3)+b_4(i4_1,i4_2,i8_3)+c_4(i4_1,i4_2,i8_3)
	    b_4(i4_1,i4_2,i8_3) =
     1	    b_4(i4_1,i4_2,i8_3)+c_4(i4_1,i4_2,i8_3)+a_4(i4_1,i4_2,i8_3)
	    c_4(i4_1,i4_2,i8_3) =
     1	    c_4(i4_1,i4_2,i8_3)+a_4(i4_1,i4_2,i8_3)+b_4(i4_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-2 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=1,l
        do j=1,m
      do i=1,10
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i4_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a_4(i4_1,i8_2,i4_3) = 
     1	    a_4(i4_1,i8_2,i4_3)+b_4(i4_1,i8_2,i4_3)+c_4(i4_1,i8_2,i4_3)
	    b_4(i4_1,i8_2,i4_3) =
     1	    b_4(i4_1,i8_2,i4_3)+c_4(i4_1,i8_2,i4_3)+a_4(i4_1,i8_2,i4_3)
	    c_4(i4_1,i8_2,i4_3) =
     1	    c_4(i4_1,i8_2,i4_3)+a_4(i4_1,i8_2,i4_3)+b_4(i4_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-3 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=1,l
        do j=1,m
      do i=1,n
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i4_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a_4(i4_1,i8_2,i8_3) = 
     1	    a_4(i4_1,i8_2,i8_3)+b_4(i4_1,i8_2,i8_3)+c_4(i4_1,i8_2,i8_3)
	    b_4(i4_1,i8_2,i8_3) =
     1	    b_4(i4_1,i8_2,i8_3)+c_4(i4_1,i8_2,i8_3)+a_4(i4_1,i8_2,i8_3)
	    c_4(i4_1,i8_2,i8_3) =
     1	    c_4(i4_1,i8_2,i8_3)+a_4(i4_1,i8_2,i8_3)+b_4(i4_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-4 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=o,l
        do j=1,m
      do i=1,n
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i8_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a_4(i8_1,i4_2,i4_3) = 
     1	    a_4(i8_1,i4_2,i4_3)+b_4(i8_1,i4_2,i4_3)+c_4(i8_1,i4_2,i4_3)
	    b_4(i8_1,i4_2,i4_3) =
     1	    b_4(i8_1,i4_2,i4_3)+c_4(i8_1,i4_2,i4_3)+a_4(i8_1,i4_2,i4_3)
	    c_4(i8_1,i4_2,i4_3) =
     1	    c_4(i8_1,i4_2,i4_3)+a_4(i8_1,i4_2,i4_3)+b_4(i8_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-5 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=o,l
        do j=p,m
      do i=1,n
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i8_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a_4(i8_1,i4_2,i8_3) = 
     1	    a_4(i8_1,i4_2,i8_3)+b_4(i8_1,i4_2,i8_3)+c_4(i8_1,i4_2,i8_3)
	    b_4(i8_1,i4_2,i8_3) =
     1	    b_4(i8_1,i4_2,i8_3)+c_4(i8_1,i4_2,i8_3)+a_4(i8_1,i4_2,i8_3)
	    c_4(i8_1,i4_2,i8_3) =
     1	    c_4(i8_1,i4_2,i8_3)+a_4(i8_1,i4_2,i8_3)+b_4(i8_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-6 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=o,l
        do j=p,m
      do i=q,n
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i8_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a_4(i8_1,i8_2,i4_3) = 
     1	    a_4(i8_1,i8_2,i4_3)+b_4(i8_1,i8_2,i4_3)+c_4(i8_1,i8_2,i4_3)
	    b_4(i8_1,i8_2,i4_3) =
     1	    b_4(i8_1,i8_2,i4_3)+c_4(i8_1,i8_2,i4_3)+a_4(i8_1,i8_2,i4_3)
	    c_4(i8_1,i8_2,i4_3) =
     1	    c_4(i8_1,i8_2,i4_3)+a_4(i8_1,i8_2,i4_3)+b_4(i8_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-7 : end"

      before_a_4 = a_4; before_b_4 = b_4; before_c_4 = c_4
          do k=o,l
        do j=p,m
      do i=q,n
	    a_4(i,j,k) = a_4(i,j,k)+b_4(i,j,k)+c_4(i,j,k)
	    b_4(i,j,k) = b_4(i,j,k)+c_4(i,j,k)+a_4(i,j,k)
	    c_4(i,j,k) = c_4(i,j,k)+a_4(i,j,k)+b_4(i,j,k)
          enddo
        enddo
      enddo
      normal_a_4 = a_4; normal_b_4 = b_4; normal_c_4 = c_4
      a_4 = before_a_4; b_4 = before_b_4; c_4 = before_c_4
      do i8_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a_4(i8_1,i8_2,i8_3) = 
     1	    a_4(i8_1,i8_2,i8_3)+b_4(i8_1,i8_2,i8_3)+c_4(i8_1,i8_2,i8_3)
	    b_4(i8_1,i8_2,i8_3) =
     1	    b_4(i8_1,i8_2,i8_3)+c_4(i8_1,i8_2,i8_3)+a_4(i8_1,i8_2,i8_3)
	    c_4(i8_1,i8_2,i8_3) =
     1	    c_4(i8_1,i8_2,i8_3)+a_4(i8_1,i8_2,i8_3)+b_4(i8_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_4(a_4,b_4,c_4,normal_a_4,normal_b_4,normal_c_4)
      print *,"case-8 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=1,10
        do j=1,10
      do i=1,10
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i4_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a_8(i4_1,i4_2,i4_3) = 
     1	    a_8(i4_1,i4_2,i4_3)+b_8(i4_1,i4_2,i4_3)+c_8(i4_1,i4_2,i4_3)
	    b_8(i4_1,i4_2,i4_3) =
     1	    b_8(i4_1,i4_2,i4_3)+c_8(i4_1,i4_2,i4_3)+a_8(i4_1,i4_2,i4_3)
	    c_8(i4_1,i4_2,i4_3) =
     1	    c_8(i4_1,i4_2,i4_3)+a_8(i4_1,i4_2,i4_3)+b_8(i4_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-9 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=1,l
        do j=1,10
      do i=1,10
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i4_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a_8(i4_1,i4_2,i8_3) = 
     1	    a_8(i4_1,i4_2,i8_3)+b_8(i4_1,i4_2,i8_3)+c_8(i4_1,i4_2,i8_3)
	    b_8(i4_1,i4_2,i8_3) =
     1	    b_8(i4_1,i4_2,i8_3)+c_8(i4_1,i4_2,i8_3)+a_8(i4_1,i4_2,i8_3)
	    c_8(i4_1,i4_2,i8_3) =
     1	    c_8(i4_1,i4_2,i8_3)+a_8(i4_1,i4_2,i8_3)+b_8(i4_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-10 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=1,l
        do j=1,m
      do i=1,10
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i4_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a_8(i4_1,i8_2,i4_3) = 
     1	    a_8(i4_1,i8_2,i4_3)+b_8(i4_1,i8_2,i4_3)+c_8(i4_1,i8_2,i4_3)
	    b_8(i4_1,i8_2,i4_3) =
     1	    b_8(i4_1,i8_2,i4_3)+c_8(i4_1,i8_2,i4_3)+a_8(i4_1,i8_2,i4_3)
	    c_8(i4_1,i8_2,i4_3) =
     1	    c_8(i4_1,i8_2,i4_3)+a_8(i4_1,i8_2,i4_3)+b_8(i4_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-11 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=1,l
        do j=1,m
      do i=1,n
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i4_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a_8(i4_1,i8_2,i8_3) = 
     1	    a_8(i4_1,i8_2,i8_3)+b_8(i4_1,i8_2,i8_3)+c_8(i4_1,i8_2,i8_3)
	    b_8(i4_1,i8_2,i8_3) =
     1	    b_8(i4_1,i8_2,i8_3)+c_8(i4_1,i8_2,i8_3)+a_8(i4_1,i8_2,i8_3)
	    c_8(i4_1,i8_2,i8_3) =
     1	    c_8(i4_1,i8_2,i8_3)+a_8(i4_1,i8_2,i8_3)+b_8(i4_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-12 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=o,l
        do j=1,m
      do i=1,n
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i8_1=1,10
        do i4_2=1,10
          do i4_3=1,10
	    a_8(i8_1,i4_2,i4_3) = 
     1	    a_8(i8_1,i4_2,i4_3)+b_8(i8_1,i4_2,i4_3)+c_8(i8_1,i4_2,i4_3)
	    b_8(i8_1,i4_2,i4_3) =
     1	    b_8(i8_1,i4_2,i4_3)+c_8(i8_1,i4_2,i4_3)+a_8(i8_1,i4_2,i4_3)
	    c_8(i8_1,i4_2,i4_3) =
     1	    c_8(i8_1,i4_2,i4_3)+a_8(i8_1,i4_2,i4_3)+b_8(i8_1,i4_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-13 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=o,l
        do j=p,m
      do i=1,n
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i8_1=1,10
        do i4_2=1,10
          do i8_3=1,10
	    a_8(i8_1,i4_2,i8_3) = 
     1	    a_8(i8_1,i4_2,i8_3)+b_8(i8_1,i4_2,i8_3)+c_8(i8_1,i4_2,i8_3)
	    b_8(i8_1,i4_2,i8_3) =
     1	    b_8(i8_1,i4_2,i8_3)+c_8(i8_1,i4_2,i8_3)+a_8(i8_1,i4_2,i8_3)
	    c_8(i8_1,i4_2,i8_3) =
     1	    c_8(i8_1,i4_2,i8_3)+a_8(i8_1,i4_2,i8_3)+b_8(i8_1,i4_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-14 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=o,l
        do j=p,m
      do i=q,n
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i8_1=1,10
        do i8_2=1,10
          do i4_3=1,10
	    a_8(i8_1,i8_2,i4_3) = 
     1	    a_8(i8_1,i8_2,i4_3)+b_8(i8_1,i8_2,i4_3)+c_8(i8_1,i8_2,i4_3)
	    b_8(i8_1,i8_2,i4_3) =
     1	    b_8(i8_1,i8_2,i4_3)+c_8(i8_1,i8_2,i4_3)+a_8(i8_1,i8_2,i4_3)
	    c_8(i8_1,i8_2,i4_3) =
     1	    c_8(i8_1,i8_2,i4_3)+a_8(i8_1,i8_2,i4_3)+b_8(i8_1,i8_2,i4_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-15 : end"

      before_a_8 = a_8; before_b_8 = b_8; before_c_8 = c_8
          do k=o,l
        do j=p,m
      do i=q,n
	    a_8(i,j,k) = a_8(i,j,k)+b_8(i,j,k)+c_8(i,j,k)
	    b_8(i,j,k) = b_8(i,j,k)+c_8(i,j,k)+a_8(i,j,k)
	    c_8(i,j,k) = c_8(i,j,k)+a_8(i,j,k)+b_8(i,j,k)
          enddo
        enddo
      enddo
      normal_a_8 = a_8; normal_b_8 = b_8; normal_c_8 = c_8
      a_8 = before_a_8; b_8 = before_b_8; c_8 = before_c_8
      do i8_1=1,10
        do i8_2=1,10
          do i8_3=1,10
	    a_8(i8_1,i8_2,i8_3) = 
     1	    a_8(i8_1,i8_2,i8_3)+b_8(i8_1,i8_2,i8_3)+c_8(i8_1,i8_2,i8_3)
	    b_8(i8_1,i8_2,i8_3) =
     1	    b_8(i8_1,i8_2,i8_3)+c_8(i8_1,i8_2,i8_3)+a_8(i8_1,i8_2,i8_3)
	    c_8(i8_1,i8_2,i8_3) =
     1	    c_8(i8_1,i8_2,i8_3)+a_8(i8_1,i8_2,i8_3)+b_8(i8_1,i8_2,i8_3)
          enddo
        enddo
      enddo
      call ok_or_ng_8(a_8,b_8,c_8,normal_a_8,normal_b_8,normal_c_8)
      print *,"case-16 : end"

      end
c
c
c
      subroutine ok_or_ng_4(a,b,c,normal_a,normal_b,normal_c)
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

      subroutine ok_or_ng_8(a,b,c,normal_a,normal_b,normal_c)
      integer*8 a(10,10,10),b(10,10,10),c(10,10,10)
      integer*8 normal_a(10,10,10),normal_b(10,10,10),normal_c(10,10,10)
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
