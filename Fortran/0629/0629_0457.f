      integer*8 i,j,k,l,m,n,o,p,q
      integer*4 init1_4,init2_4,init3_4
      integer*4 term1_4,term2_4,term3_4
      integer*8 init1_8,init2_8,init3_8
      integer*8 term1_8,term2_8,term3_8
      integer*4 a(10,10,10),b(10,10,10),c(10,10,10)
      integer*4 before_a(10,10,10),before_b(10,10,10),before_c(10,10,10)
      integer*4 normal_a(10,10,10),normal_b(10,10,10),normal_c(10,10,10)
      init1_4=1;init2_4=1;init3_4=1
      init1_8=1;init2_8=1;init3_8=1
      term1_4=10;term2_4=10;term3_4=10
      term1_8=10;term2_8=10;term3_8=10
      l=10;m=10;n=10;o=1;p=1;q=1
      do i=1,10
        do j=1,10
          do k=1,10
	    a(i,j,k) = k; b(i,j,k) = j; c(i,j,k) = i
          enddo
        enddo
      enddo
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
      do i=init1_4,term1_4
        do j=init2_8,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-15 : end"
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
      do i=init1_4,term1_4
        do j=init2_8,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-16 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-17 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-18 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-20 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-21 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-22 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-23 : end"
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
      do i=init1_4,term1_8
        do j=init2_4,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-24 : end"

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
      do i=init1_4,term1_8
        do j=init2_8,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-25 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-26 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-27 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-28 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-29 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-30 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-31 : end"
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
      do i=init1_4,term1_8
        do j=init2_8,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-32 : end"

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
      do i=init1_8,term1_4
        do j=init2_4,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-33 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-34 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-35 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-36 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-37 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-38 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-39 : end"
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
      do i=init1_8,term1_4
        do j=init2_4,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-40 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-41 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-42 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-43 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-44 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-45 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-46 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-47 : end"
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
      do i=init1_8,term1_4
        do j=init2_8,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-48 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-49 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-50 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-51 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-52 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-53 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-54 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-55 : end"
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
      do i=init1_8,term1_8
        do j=init2_4,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-56 : end"

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
      do i=init1_8,term1_8
        do j=init2_8,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-57 : end"
      end
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
