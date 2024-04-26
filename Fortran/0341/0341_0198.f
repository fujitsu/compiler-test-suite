      integer*8 i,j,k,l,m,n,o,p,q
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
      call sub1
      call sub2
      call sub3
      call sub4
      call sub5
      call sub6
      call sub7
      call sub8
      call sub9
      call sub10
      call sub11
      call sub12
      call sub13
      call sub14
      call sub15
      call sub16
      call sub17
      call sub18
      call sub19
      call sub20
      call sub21
      call sub22
      call sub23
      call sub24
      call sub25
      call sub26
      call sub27
      call sub28
      call sub29
      call sub30
      call sub31
      call sub32
      call sub33
      call sub34
      call sub35
      call sub36
      call sub37
      call sub38
      call sub39
      call sub40
      call sub41
      call sub42
      call sub43
      call sub44
      call sub45
      call sub46
      call sub47
      call sub48
      call sub49
      call sub50
      call sub51
      call sub52
      call sub53
      call sub54
      call sub55
      call sub56
      call sub57
      call sub58
      call sub59
      call sub60
      call sub61
      call sub62
      call sub63
      call sub64
      contains

      subroutine sub 1
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

      end subroutine
      subroutine sub 2
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

      end subroutine
      subroutine sub 3
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

      end subroutine
      subroutine sub 4
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

      end subroutine
      subroutine sub 5
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

      end subroutine
      subroutine sub 6
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

      end subroutine
      subroutine sub 7
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

      end subroutine
      subroutine sub 8
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


      end subroutine
      subroutine sub 9
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

      end subroutine
      subroutine sub 10
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

      end subroutine
      subroutine sub 11
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

      end subroutine
      subroutine sub 12
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
      end subroutine

      subroutine sub 13
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

      end subroutine
      subroutine sub 14
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

      end subroutine
      subroutine sub 15
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

      end subroutine
      subroutine sub 16
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

      end subroutine
      subroutine sub 17
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

      end subroutine
      subroutine sub 18
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

      end subroutine
      subroutine sub 19
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

      end subroutine
      subroutine sub 20
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

      end subroutine
      subroutine sub 21
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

      end subroutine
      subroutine sub 22
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

      end subroutine
      subroutine sub 23
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

      end subroutine
      subroutine sub 24
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


      end subroutine
      subroutine sub 25
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

      end subroutine
      subroutine sub 26
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

      end subroutine
      subroutine sub 27
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
      end subroutine
      subroutine sub 28
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

      end subroutine
      subroutine sub 29
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

      end subroutine
      subroutine sub 30
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

      end subroutine
      subroutine sub 31
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

      end subroutine
      subroutine sub 32
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


      end subroutine
      subroutine sub 33
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

      end subroutine
      subroutine sub 34
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

      end subroutine
      subroutine sub 35
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

      end subroutine
      subroutine sub 36
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

      end subroutine
      subroutine sub 37
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

      end subroutine
      subroutine sub 38
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

      end subroutine
      subroutine sub 39
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

      end subroutine
      subroutine sub 40
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
      subroutine sub 41
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

      end subroutine
      subroutine sub 42
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

      end subroutine
      subroutine sub 43
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

      end subroutine
      subroutine sub 44
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

      end subroutine
      subroutine sub 45
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

      end subroutine
      subroutine sub 46
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

      end subroutine
      subroutine sub 47
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

      end subroutine
      subroutine sub 48
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

      end subroutine
      subroutine sub 49
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

      end subroutine
      subroutine sub 50
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

      end subroutine
      subroutine sub 51
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

      end subroutine
      subroutine sub 52
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

      end subroutine
      subroutine sub 53
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

      end subroutine
      subroutine sub 54
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

      end subroutine
      subroutine sub 55
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
      subroutine sub 56
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


      end subroutine
      subroutine sub 57
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

      end subroutine
      subroutine sub 58
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

      end subroutine
      subroutine sub 59
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

      end subroutine
      subroutine sub 60
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

      end subroutine
      subroutine sub 61
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

      end subroutine
      subroutine sub 62
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

      end subroutine
      subroutine sub 63
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

      end subroutine
      subroutine sub 64
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
      end subroutine 
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
