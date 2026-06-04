      call s1
      print *,'pass'
      end
      subroutine err(i,j)
      print *,'error code :',i,j
      print *,'fail'
      end
      subroutine sx(c,i,j)
      complex*16 c
      c=dcmplx(i,j)
      end
      subroutine sc(iu,i,j)
      complex*16 c
      rewind iu
      read (iu,*) c
      if (abs(c-dcmplx(i,j))>0.00001d0) then
         call err(9999,iu)
         print *,c,dcmplx(i,j)
         print *,abs(c-dcmplx(i,j))
      endif
      iu=iu+1
      end
      subroutine s1
      call ss1
      call ss2
      end
      subroutine ss1
      complex*16  a1,a2(2) 
      type x1
      complex*16  a1,a2(2) 
      end type
      type x2
      complex*16  a1,a2(2) 
      type (x1)::c
      end type
      type x3
      complex*16  a1,a2(2) 
      type (x1)::c
      type (x2)::d
      end type
      type (x3):: x
      k=2
      iu=11
      a1=dcmplx(1,2)
      a2(1)=dcmplx(2,3)
      a2(k)=dcmplx(3,4)
      x%a2(1)=dcmplx(12,13)
      x%a1=dcmplx(11,12)
      x%a2(k)=dcmplx(13,14)
      x%c%a1=dcmplx(21,22)
      x%c%a2=dcmplx(22,23)
      x%c%a2(k)=dcmplx(23,24)
      x%d%a1=dcmplx(31,32)
      x%d%a2=dcmplx(32,33)
      x%d%a2(k)=dcmplx(33,34)
      x%d%c%a1=dcmplx(41,42)
      x%d%c%a2=dcmplx(42,43)
      x%d%c%a2(k)=dcmplx(43,44)
      if (a1/=dcmplx(1,2))call err(001,0)
      if (a2(1)/=dcmplx(2,3))call err(002,0)
      if (a2(k)/=dcmplx(3,4))call err(003,0)
      write(iu ,*) a2(2)
      call sc(iu,3,4)
      if (x%a1/=dcmplx(11,12))call err(004,0)
      write(iu ,*) x%a1
      call sc(iu,11,12)
      if (x%a2(1)/=dcmplx(12,13))call err(005,0)
      write(iu ,*) x%a2(1)
      call sc(iu,12,13)
      if (x%a2(k)/=dcmplx(13,14))call err(006,0)
      write(iu ,*) x%a2(2)
      call sc(iu,13,14)
      if (x%c%a1/=dcmplx(21,22))call err(007,0)
      write(iu ,*) x%c%a1
      call sc(iu,21,22)
      if (x%c%a2(1)/=dcmplx(22,23))call err(008,0)
      write(iu ,*) x%c%a2(1)
      call sc(iu,22,23)
      if (x%c%a2(k)/=dcmplx(23,24))call err(009,0)
      write(iu ,*) x%c%a2(2)
      call sc(iu,23,24)
      if (x%d%a1/=dcmplx(31,32))call err(010,0)
      write(iu ,*) x%d%a1
      call sc(iu,31,32)
      if (x%d%a2(1)/=dcmplx(32,33))call err(011,0)
      write(iu ,*) x%d%a2(1)
      call sc(iu,32,33)
      if (x%d%a2(k)/=dcmplx(33,34))call err(012,0)
      write(iu ,*) x%d%a2(2)
      call sc(iu,33,34)
      if (x%d%c%a1/=dcmplx(41,42))call err(013,0)
      write(iu ,*) x%d%c%a1
      call sc(iu,41,42)
      if (x%d%c%a2(1)/=dcmplx(42,43))call err(014,0)
      write(iu ,*) x%d%c%a2(1)
      call sc(iu,42,43)
      if (x%d%c%a2(k)/=dcmplx(43,44))call err(015,0)
      write(iu ,*) x%d%c%a2(2)
      call sc(iu,43,44)
      end
      subroutine ss2
      pointer (ia1,a1),(ia2,a2),(ix,x)
      complex*16  a1,a2(2) 
      complex*16  b1,b2(2) 
      type x1
      complex*16  a1,a2(2) 
      end type
      type x2
      complex*16  a1,a2(2) 
      type (x1)::c
      end type
      type x3
      complex*16  a1,a2(2) 
      type (x1)::c
      type (x2)::d
      end type
      type (x3):: x,bx
      k=2
      iu=51
      ia1=loc(b1)
      ia2=loc(b2)
      ix =loc(bx)

      a1=dcmplx(1,2)
      a2(1)=dcmplx(2,3)
      a2(k)=dcmplx(3,4)
      x%a2(1)=dcmplx(12,13)
      x%a1=dcmplx(11,12)
      x%a2(k)=dcmplx(13,14)
      x%c%a1=dcmplx(21,22)
      x%c%a2=dcmplx(22,23)
      x%c%a2(k)=dcmplx(23,24)
      x%d%a1=dcmplx(31,32)
      x%d%a2=dcmplx(32,33)
      x%d%a2(k)=dcmplx(33,34)
      x%d%c%a1=dcmplx(41,42)
      x%d%c%a2=dcmplx(42,43)
      x%d%c%a2(k)=dcmplx(43,44)
      if (a1/=dcmplx(1,2))call err(001,0)
      if (a2(1)/=dcmplx(2,3))call err(002,0)
      if (a2(k)/=dcmplx(3,4))call err(003,0)
      write(iu ,*) a2(2)
      call sc(iu,3,4)
      if (x%a1/=dcmplx(11,12))call err(004,0)
      write(iu ,*) x%a1
      call sc(iu,11,12)
      if (x%a2(1)/=dcmplx(12,13))call err(005,0)
      write(iu ,*) x%a2(1)
      call sc(iu,12,13)
      if (x%a2(k)/=dcmplx(13,14))call err(006,0)
      write(iu ,*) x%a2(2)
      call sc(iu,13,14)
      if (x%c%a1/=dcmplx(21,22))call err(007,0)
      write(iu ,*) x%c%a1
      call sc(iu,21,22)
      if (x%c%a2(1)/=dcmplx(22,23))call err(008,0)
      write(iu ,*) x%c%a2(1)
      call sc(iu,22,23)
      if (x%c%a2(k)/=dcmplx(23,24))call err(009,0)
      write(iu ,*) x%c%a2(2)
      call sc(iu,23,24)
      if (x%d%a1/=dcmplx(31,32))call err(010,0)
      write(iu ,*) x%d%a1
      call sc(iu,31,32)
      if (x%d%a2(1)/=dcmplx(32,33))call err(011,0)
      write(iu ,*) x%d%a2(1)
      call sc(iu,32,33)
      if (x%d%a2(k)/=dcmplx(33,34))call err(012,0)
      write(iu ,*) x%d%a2(2)
      call sc(iu,33,34)
      if (x%d%c%a1/=dcmplx(41,42))call err(013,0)
      write(iu ,*) x%d%c%a1
      call sc(iu,41,42)
      if (x%d%c%a2(1)/=dcmplx(42,43))call err(014,0)
      write(iu ,*) x%d%c%a2(1)
      call sc(iu,42,43)
      if (x%d%c%a2(k)/=dcmplx(43,44))call err(015,0)
      write(iu ,*) x%d%c%a2(2)
      call sc(iu,43,44)
      a1=dcmplx(1,2)
      if (a1/=dcmplx(1,2))call err(001,0)
      write(iu ,*) a1
      call sc(iu,1,2)
      a2=dcmplx(2,3)
      if (a2(1)/=dcmplx(2,3))call err(002,0)
      write(iu ,*) a2(1)
      call sc(iu,2,3)
      a2(k)=dcmplx(3,4)
      if (a2(k)/=dcmplx(3,4))call err(003,0)
      write(iu ,*) a2(2)
      call sc(iu,3,4)
      x%a1=dcmplx(1,2)
      if (x%a1/=dcmplx(1,2))call err(004,0)
      write(iu ,*) x%a1
      call sc(iu,1,2)
      x%a2=dcmplx(2,3)
      if (x%a2(1)/=dcmplx(2,3))call err(005,0)
      write(iu ,*) x%a2(1)
      call sc(iu,2,3)
      x%a2(k)=dcmplx(3,4)
      if (x%a2(k)/=dcmplx(3,4))call err(006,0)
      write(iu ,*) x%a2(2)
      call sc(iu,3,4)
      x%c%a1=dcmplx(1,2)
      if (x%c%a1/=dcmplx(1,2))call err(007,0)
      write(iu ,*) x%c%a1
      call sc(iu,1,2)
      x%c%a2=dcmplx(2,3)
      if (x%c%a2(1)/=dcmplx(2,3))call err(008,0)
      write(iu ,*) x%c%a2(1)
      call sc(iu,2,3)
      x%c%a2(k)=dcmplx(3,4)
      if (x%c%a2(k)/=dcmplx(3,4))call err(009,0)
      write(iu ,*) x%c%a2(2)
      call sc(iu,3,4)
      x%d%a1=dcmplx(1,2)
      if (x%d%a1/=dcmplx(1,2))call err(010,0)
      write(iu ,*) x%d%a1
      call sc(iu,1,2)
      x%d%a2=dcmplx(2,3)
      if (x%d%a2(1)/=dcmplx(2,3))call err(011,0)
      write(iu ,*) x%d%a2(1)
      call sc(iu,2,3)
      x%d%a2(k)=dcmplx(3,4)
      if (x%d%a2(k)/=dcmplx(3,4))call err(012,0)
      write(iu ,*) x%d%a2(2)
      call sc(iu,3,4)
      x%d%c%a1=dcmplx(1,2)
      if (x%d%c%a1/=dcmplx(1,2))call err(013,0)
      write(iu ,*) x%d%c%a1
      call sc(iu,1,2)
      x%d%c%a2=dcmplx(2,3)
      if (x%d%c%a2(1)/=dcmplx(2,3))call err(014,0)
      write(iu ,*) x%d%c%a2(1)
      call sc(iu,2,3)
      x%d%c%a2(k)=dcmplx(3,4)
      if (x%d%c%a2(k)/=dcmplx(3,4))call err(015,0)
      write(iu ,*) x%d%c%a2(2)
      call sc(iu,3,4)
      end
