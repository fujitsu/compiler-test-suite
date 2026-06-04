      call s1
      print *,'pass'
      end
      subroutine s_1_s(a1,ja2)
      pointer (jax,jay)
      complex*16 a1,a2(ja1),jay,ja2
      jax=loc(ja2)
      a1=jay
      jay=jay+(1,1)
      return
      entry s_1_a(a2,ja2,ja1)
      jax=loc(ja2)
      do k=1,ja1
        a2(k)=jay
        jay=jay+(1,1)
      end do
      end
      subroutine s1
      parameter (m0=0,m1=1,m2=2,m3=3)
      complex*16    a2,   a4,   a6,a7,a8
      dimension a2(0:2),a4(m0:m2),    a7(0:2),a8(m0:m2)
      integer*8 ia6,ia7,ia8
      ia6=loc(a6)
      ia7=loc(a7)
      ia8=loc(a8)
      call       s11(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      end
      subroutine s11(a2,a4,ia6,ia7,ia8,m0,m1,m2,m3)
      complex*16 a1,a2,a3,a4,a5,a6,a7,a8,ja1
      dimension a2(0:2),a4(m0:m2),a5(:),a7(0:2),a8(m0:m2)
      structure /x_type/
        complex*16 a(-41:-24,10)
      end structure
      record /x_type/ ax
      allocatable a5
      pointer (ia6,a6),(ia7,a7),(ia8,a8)
      allocate (a5(0:2))
      ja1=(-41,-41)
      call s_1_s(a1,ja1)
      call s_1_a(a2,ja1,3)
      call s_1_s(a3,ja1)
      call s_1_a(a4,ja1,3)
      call s_1_a(a5,ja1,3)
      call s_1_s(a6,ja1)
      call s_1_a(a7,ja1,3)
      call s_1_a(a8,ja1,3)
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
      do ja=-41,real(ja1-1)
        if (ax.a(ja,jb).ne.cmplx(ja,ja))call err(001,ja,jb)
      end do
      end do
      end
      subroutine err(i,j,k)
      print *,'error code :',i,j,k
      print *,'fail'
      end
