      call a1
      print *,'pass'
      end
      subroutine a1
      character*2 ,pointer::b(:)
      integer a(10)
      allocate (b(10))
      a=(/((i,i=97,97),j=1,10)/)
      b='bc'
      call sub1(a=a,b=b)
      contains
      subroutine sub1(a,b)
      integer,intent(in),dimension(:)::a
      character*(*),intent(in),dimension(:)::b
      call sub2(a1=char(a),a2=achar(a),a3=char(a)//b,a4=achar(a)//b)
      end subroutine
      subroutine sub2(a1,a2,a3,a4)
      character*(*),intent(in),dimension(:)::a1,a2,a3,a4
      do i=1,10
      if(a1(i).ne.a2(i)) print *,'fail'
      if(a3(i).ne.a4(i)) print *,'fail'
      enddo
      end subroutine
      end
