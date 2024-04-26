      integer*4 i,j,k
      integer*8 l,m,n,o,p,q
      integer*4 init1_4,init2_4,init3_4
      integer*4 term1_4,term2_4,term3_4
      integer*8 init1_8,init2_8,init3_8
      integer*8 term1_8,term2_8,term3_8
      integer*4 a(10,10,10),b(10,10,10),c(10,10,10)
      integer*4 before_a(10,10,10),before_b(10,10,10),before_c(10,10,10)
      integer*4 normal_a(10,10,10),normal_b(10,10,10),normal_c(10,10,10)
c
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
      call case 1
      call case 2
      call case 3
      call case 4
      call case 5
      call case 6
      call case 7
      call case 8
      call case 9
      call case 10
      call case 11
      call case 12
      call case 13
      call case 14
      call case 15
      call case 16
      call case 17
      call case 18
      call case 19
      call case 20
      call case 21
      call case 22
      call case 23
      call case 24
      call case 25
      call case 26
      call case 27
      call case 28
      call case 29
      call case 30
      call case 31
      call case 32
      call case 33
      call case 34
      call case 35
      call case 36
      call case 37
      call case 38
      call case 39
      call case 40
      call case 41
      call case 42
      call case 43
      call case 44
      call case 45
      call case 46
      call case 47
      call case 48
      call case 49
      call case 50
      call case 51
      call case 52
      call case 53
      call case 54
      call case 55
      call case 56
      call case 57
      call case 58
      call case 59
      call case 60
      call case 61
      call case 62
      call case 63
      call case 64
      contains

      subroutine case 1
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
      do i=init1_4,term1_4
        do j=init2_4,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-1 : end"
      endsubroutine

      subroutine case 2
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
      do i=init1_4,term1_4
        do j=init2_4,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-2 : end"
      endsubroutine

      subroutine case 3
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
      do i=init1_4,term1_4
        do j=init2_4,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-3 : end"
      endsubroutine

      subroutine case 4
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
      do i=init1_4,term1_4
        do j=init2_4,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-4 : end"
      endsubroutine

      subroutine case 5
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
      do i=init1_4,term1_4
        do j=init2_4,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-5 : end"
      endsubroutine

      subroutine case 6
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
      do i=init1_4,term1_4
        do j=init2_4,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-6 : end"
      endsubroutine

      subroutine case 7
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
        do j=init2_4,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-7 : end"
      endsubroutine

      subroutine case 8
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
        do j=init2_4,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-8 : end"

      endsubroutine

      subroutine case 9
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
      do i=init1_4,term1_4
        do j=init2_8,term2_4
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-9 : end"
      endsubroutine

      subroutine case 10
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
      do i=init1_4,term1_4
        do j=init2_8,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-10 : end"
      endsubroutine

      subroutine case 11
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
      do i=init1_4,term1_4
        do j=init2_8,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-11 : end"
      endsubroutine

      subroutine case 12
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
      do i=init1_4,term1_4
        do j=init2_8,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-12 : end"
      endsubroutine

      subroutine case 13
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
      do i=init1_4,term1_4
        do j=init2_8,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-13 : end"
      endsubroutine

      subroutine case 14
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
      do i=init1_4,term1_4
        do j=init2_8,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-14 : end"
      endsubroutine

      subroutine case 15
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
      endsubroutine

      subroutine case 16
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
      endsubroutine

      subroutine case 17
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
      endsubroutine

      subroutine case 18
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
      endsubroutine

      subroutine case 19
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
        do j=init2_4,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-19 : end"
      endsubroutine

      subroutine case 20
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
      endsubroutine

      subroutine case 21
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
      endsubroutine

      subroutine case 22
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
      endsubroutine

      subroutine case 23
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
      endsubroutine

      subroutine case 24
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

      endsubroutine

      subroutine case 25
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
      endsubroutine

      subroutine case 26
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
      endsubroutine

      subroutine case 27
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
      endsubroutine

      subroutine case 28
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
      endsubroutine

      subroutine case 29
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
      endsubroutine

      subroutine case 30
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
      endsubroutine

      subroutine case 31
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
      endsubroutine

      subroutine case 32
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

      endsubroutine

      subroutine case 33
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
      endsubroutine

      subroutine case 34
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
      endsubroutine

      subroutine case 35
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
      endsubroutine

      subroutine case 36
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
      endsubroutine

      subroutine case 37
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
      endsubroutine

      subroutine case 38
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
      endsubroutine

      subroutine case 39
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
      endsubroutine

      subroutine case 40
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
      end subroutine

      subroutine case 41
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
      endsubroutine

      subroutine case 42
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
      endsubroutine

      subroutine case 43
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
      endsubroutine

      subroutine case 44
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
      endsubroutine

      subroutine case 45
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
      endsubroutine

      subroutine case 46
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
      endsubroutine

      subroutine case 47
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
      endsubroutine

      subroutine case 48
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
      endsubroutine

      subroutine case 49
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
      endsubroutine

      subroutine case 50
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
      endsubroutine

      subroutine case 51
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
      endsubroutine

      subroutine case 52
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
      endsubroutine

      subroutine case 53
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
      endsubroutine

      subroutine case 54
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
      endsubroutine

      subroutine case 55
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
      end subroutine

      subroutine case 56
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

      endsubroutine

      subroutine case 57
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
      endsubroutine

      subroutine case 58
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
        do j=init2_8,term2_4
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-58 : end"
      endsubroutine

      subroutine case 59
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
        do j=init2_8,term2_4
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-59 : end"
      endsubroutine

      subroutine case 60
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
        do j=init2_8,term2_4
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-60 : end"
      endsubroutine

      subroutine case 61
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
        do j=init2_8,term2_8
          do k=init3_4,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-61 : end"
      endsubroutine

      subroutine case 62
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
        do j=init2_8,term2_8
          do k=init3_4,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-62 : end"
      endsubroutine

      subroutine case 63
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
        do j=init2_8,term2_8
          do k=init3_8,term3_4
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-63 : end"
      endsubroutine

      subroutine case64
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
        do j=init2_8,term2_8
          do k=init3_8,term3_8
	    a(i,j,k) = a(i,j,k)+b(i,j,k)+c(i,j,k)
	    b(i,j,k) = b(i,j,k)+c(i,j,k)+a(i,j,k)
	    c(i,j,k) = c(i,j,k)+a(i,j,k)+b(i,j,k)
          enddo
        enddo
      enddo
      call ok_or_ng(a,b,c,normal_a,normal_b,normal_c)
      print *,"case-64 : end"
      endsubroutine
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
