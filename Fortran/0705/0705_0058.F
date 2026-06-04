      call s1
      print *,'pass'
      end
      subroutine s_1_s(a1,ja1)
      pointer (jax,jay)
      character*4 a1,a2(ja1)
      jax=loc(ja1)
      write(a1,'(i4.4)')jay
      jay=jay+1
      return
      entry s_1_a(a2,ja2,ja1)
      jax=loc(ja2)
      do k=1,ja1
        write(a2(k),'(i4.4)')jay
        jay=jay+1
      end do
      end
      subroutine s1
      parameter (m0=0,m1=1,m2=2,m3=3)
      character*4    a2,   a4,   a6,a7,a8
      dimension a2(0:2),a4(m0:m2),    a7(0:2),a8(m0:m2)
      integer*8 ia6,ia7,ia8
      ia6=loc(a6)
      ia7=loc(a7)
      ia8=loc(a8)
      call       s11(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      call       s12(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      end
      subroutine s12(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      character*4 a1,a2*(*),a3,a4*(*),a5,a6,a7,a8
      dimension a2(0:2),a4(m0:m2),a5(:),a7(0:2),a8(m0:m2)
      allocatable a5
      pointer (ia6,a6),(ia7,a7),(ia8,a8)
      structure /x_type/
        character*4 a(21:21+18-1,10)
      end structure
      record /x_type/ ax
      character*4 z
      parameter (ip=21)
      allocate (a5(0:2))
      ja1= ip
      m4=4
      call s_1_s(a1,ja1)
      call s_1_a(a2,ja1,3)
      call s_1_s(a3,ja1)
      call s_1_a(a4,ja1,3)
      call s_1_a(a5,ja1,3)
      call s_1_s(a6,ja1)
      call s_1_a(a7,ja1,3)
      call s_1_a(a8,ja1,3)
      open (12,delim='apostrophe')
      write(12,*)a1(m3:4),a2(:)(m3:4),a3(m3:4),a4(:)(m3:4),
     1           a5(:)(m3:4),a6(m3:4),a7(:)(m3:),a8(:)(m3:)
      write(12,*)a1(m3:),a2(0:2)(m3:m4),a3(m3:),a4(0:2)(m3:),
     1           a5(0:2)(m3:),a6(m3:),a7(0:2)(m3:m4),a8(0:2)(m3:m4)
      write(12,*)a1(m3:),a2(0:2:1)(m3:),a3(m3:),a4(0:2:1)(m3:),
     1           a5(0:2:1)(m3:),a6(m3:),a7(0:2:1)(m3:),a8(0:2:1)(m3:)
      write(12,*)a1(m3:),a2(0:2:m1)(m3:),a3(m3:),a4(0:2:m1)(m3:),
     1           a5(0:2:m1)(m3:),a6(m3:m4),a7(0:2:m1)(m3:)
     1          ,a8(0:2:m1)(m3:)
      write(12,*)a1(m3:),a2(m0:2:1)(m3:),a3(m3:),a4(m0:2:1)(m3:),
     1           a5(m0:2:1)(m3:),a6(m3:),a7(m0:2:1)(m3:),a8(m0:2:1)(3:)
      write(12,*)a1(3:),a2(m0:2:m1)(3:),a3(m3:),a4(m0:2:m1)(m3:),
     1           a5(m0:2:m1)(m3:),a6(m3:),a7(m0:2:m1)(m3:),
     1           a8(m0:2:m1)(m3:m4)
      write(12,*)a1(m3:),a2(0:m2:1)(m3:),a3(m3:),a4(0:m2:1)(m3:),
     1           a5(0:m2:1)(m3:),a6(m3:),a7(0:m2:1)(m3:),a8(0:m2:1)(3:)
      write(12,*)a1(m3:),a2(0:m2:m1)(m3:),a3(m3:),a4(0:m2:m1)(m3:),
     1           a5(0:m2:m1)(m3:),a6(m3:),a7(0:m2:m1)(m3:),
     1           a8(0:m2:m1)(m3:)
      write(12,*)a1(m3:),a2(m0:m2:1)(m3:),a3(m3:m4),a4(m0:m2:1)(m3:),
     1           a5(m0:m2:1)(m3:),a6(m3:),a7(m0:m2:1)(m3:),
     1           a8(m0:m2:1)(m3:)
      write(12,*)a1(m3:),a2(m0:m2:m1)(m3:),a3(m3:),a4(m0:m2:m1)(m3:),
     1           a5(m0:m2:m1)(m3:),a6(m3:),a7(m0:m2:m1)(m3:),
     1           a8(m0:m2:m1)(m3:)
      rewind 12
      read (12,*)ax.a(:,:)
      do jb=1,10
      do ja= ip,ja1-1,+1
        write(z(m3:),'(i2.2)') ja
        if (ax.a(ja,jb).ne. z(3:4))call err(001,ja,jb)
      end do
      end do
      end
      subroutine s11(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      character*4 a1,a2*(*),a3,a4*(*),a5,a6,a7,a8
      dimension a2(0:2),a4(m0:m2),a5(:),a7(0:2),a8(m0:m2)
      allocatable a5
      pointer (ia6,a6),(ia7,a7),(ia8,a8)
      structure /x_type/
        character*4 a(41:41+18-1,10)
      end structure
      record /x_type/ ax
      character*4 z
      allocate (a5(0:2))
      ja1= 41
      call s_1_s(a1,ja1)
      call s_1_a(a2,ja1,3)
      call s_1_s(a3,ja1)
      call s_1_a(a4,ja1,3)
      call s_1_a(a5,ja1,3)
      call s_1_s(a6,ja1)
      call s_1_a(a7,ja1,3)
      call s_1_a(a8,ja1,3)
      open (11,delim='apostrophe')
      write(11,*)a1,a2,a3,a4,a5,a6,a7,a8
      write(11,*)a1,a2(0:2),a3,a4(0:2),a5(0:2),a6,a7(0:2),a8(0:2)
      write(11,*)a1,a2(0:2:1),a3,a4(0:2:1),
     1           a5(0:2:1),a6,a7(0:2:1),a8(0:2:1)
      write(11,*)a1,a2(0:2:m1),a3,a4(0:2:m1),
     1           a5(0:2:m1),a6,a7(0:2:m1),a8(0:2:m1)
      write(11,*)a1,a2(m0:2:1),a3,a4(m0:2:1),
     1           a5(m0:2:1),a6,a7(m0:2:1),a8(m0:2:1)
      write(11,*)a1,a2(m0:2:m1),a3,a4(m0:2:m1),
     1           a5(m0:2:m1),a6,a7(m0:2:m1),a8(m0:2:m1)
      write(11,*)a1,a2(0:m2:1),a3,a4(0:m2:1),
     1           a5(0:m2:1),a6,a7(0:m2:1),a8(0:m2:1)
      write(11,*)a1,a2(0:m2:m1),a3,a4(0:m2:m1),
     1           a5(0:m2:m1),a6,a7(0:m2:m1),a8(0:m2:m1)
      write(11,*)a1,a2(m0:m2:1),a3,a4(m0:m2:1),
     1           a5(m0:m2:1),a6,a7(m0:m2:1),a8(m0:m2:1)
      write(11,*)a1,a2(m0:m2:m1),a3,a4(m0:m2:m1),
     1           a5(m0:m2:m1),a6,a7(m0:m2:m1),a8(m0:m2:m1)
      rewind 11
      read (11,*)ax.a
      do jb=1,10
      do ja= 41,ja1-1,+1
        write(z,'(i4.4)') ja
        if (ax.a(ja,jb).ne. z)call err(001,ja,jb)
      end do
      end do
      end
      subroutine err(i,j,k)
      print *,'error code :',i,j,k
      print *,'fail'
      end
