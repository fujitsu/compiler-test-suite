      call a1
      print *,'pass'
      end
      subroutine a1
      integer*1 i1(2)
      integer*2 i2(2)
      integer*4 i4(2)
      integer*8 i8(2)
      real*4    r(2)
      real*8    d(2)
      real*16   q(2)
      complex*32 c1(2)
logical::f=.false.
      i1=(/1,2/)
      i2=(/1,2/)
      i4=(/1,2/)
      i8=(/1,2/)
      r=(/1,2/)
      d=(/1,2/)
      q=(/1,2/)
      r1=34
      c1=4
      call minloc1(i1=minloc(i1,back=f),i2=minloc(i2,back=f),i4=minloc(i4,back=f),&
     i8=minloc(i8,back=f),r=minloc(r,back=f),d=minloc(d,back=f),q=minloc(q,back=f))
      call minloc2(i1=minval(i1),i2=minval(i2),i4=minval(i4),&
     i8=minval(i8),r=minval(r),d=minval(d),q=minval(q))
      call maxloc1(i1=maxloc(i1,back=f),i2=maxloc(i2,back=f),i4=maxloc(i4,back=f),&
     i8=maxloc(i8,back=f),r=maxloc(r,back=f),d=maxloc(d,back=f),q=maxloc(q,back=f))
      call maxloc2(i1=maxval(i1),i2=maxval(i2),i4=maxval(i4),&
     i8=maxval(i8),r=maxval(r),d=maxval(d),q=maxval(q))
      contains
      subroutine minloc1(i1,i2,i4,i8,r,d,q)
      integer*4,intent(in),optional,dimension(:)::i1,i2,i4,i8,r,d,q
      if(present(i1).neqv..true.) call errtra
      if(present(i2).neqv..true.) call errtra
      if(present(i4).neqv..true.) call errtra
      if(present(i8).neqv..true.) call errtra
      if(present(r).neqv..true.) call errtra
      if(present(d).neqv..true.) call errtra
      if(present(q).neqv..true.) call errtra
      if(i1(1).ne.1) call errtra
      if(i2(1).ne.1) call errtra
      if(i4(1).ne.1) call errtra
      if(i8(1).ne.1) call errtra
      if(r(1).ne.1) call errtra
      if(d(1).ne.1) call errtra
      if(q(1).ne.1) call errtra
      end subroutine
      subroutine minloc2(i1,i2,i4,i8,r,d,q)
      integer*1,intent(in),optional::i1
      integer*2,intent(in),optional::i2
      integer*4,intent(in),optional::i4
      integer*8,intent(in),optional::i8
      real*4,intent(in),optional::r
      real*8,intent(in),optional::d
      real*16,intent(in),optional::q
      integer*1,parameter::i11=1
      integer*2,parameter::i22=1
      integer*4,parameter::i44=1
      integer*8,parameter::i88=1
      real*4,parameter::rr=1
      real*8,parameter::dd=1
      real*16,parameter::qq=1
      if(present(i1).neqv..true.) call errtra
      if(present(i2).neqv..true.) call errtra
      if(present(i4).neqv..true.) call errtra
      if(present(i8).neqv..true.) call errtra
      if(present(r).neqv..true.) call errtra
      if(present(d).neqv..true.) call errtra
      if(present(q).neqv..true.) call errtra
      if(i1.ne.i11) call errtra
      if(i2.ne.i22) call errtra
      if(i4.ne.i44) call errtra
      if(i8.ne.i88) call errtra
      if(r.ne.rr) call errtra
      if(d.ne.dd) call errtra
      if(q.ne.qq) call errtra
      end subroutine
      subroutine maxloc1(i1,i2,i4,i8,r,d,q)
      integer*4,intent(in),optional,dimension(:)::i1,i2,i4,i8,r,d,q
      if(present(i1).neqv..true.) call errtra
      if(present(i2).neqv..true.) call errtra
      if(present(i4).neqv..true.) call errtra
      if(present(i8).neqv..true.) call errtra
      if(present(r).neqv..true.) call errtra
      if(present(d).neqv..true.) call errtra
      if(present(q).neqv..true.) call errtra
      if(i1(1).ne.2) call errtra
      if(i2(1).ne.2) call errtra
      if(i4(1).ne.2) call errtra
      if(i8(1).ne.2) call errtra
      if(r(1).ne.2) call errtra
      if(d(1).ne.2) call errtra
      if(q(1).ne.2) call errtra
      end subroutine
      subroutine maxloc2(i1,i2,i4,i8,r,d,q)
      integer*1,intent(in),optional::i1
      integer*2,intent(in),optional::i2
      integer*4,intent(in),optional::i4
      integer*8,intent(in),optional::i8
      real*4,intent(in),optional::r
      real*8,intent(in),optional::d
      real*16,intent(in),optional::q
      integer*1,parameter::i11=2
      integer*2,parameter::i22=2
      integer*4,parameter::i44=2
      integer*8,parameter::i88=2
      real*4,parameter::rr=2
      real*8,parameter::dd=2
      real*16,parameter::qq=2
      if(present(i1).neqv..true.) call errtra
      if(present(i2).neqv..true.) call errtra
      if(present(i4).neqv..true.) call errtra
      if(present(i8).neqv..true.) call errtra
      if(present(r).neqv..true.) call errtra
      if(present(d).neqv..true.) call errtra
      if(present(q).neqv..true.) call errtra
      if(i1.ne.i11) call errtra
      if(i2.ne.i22) call errtra
      if(i4.ne.i44) call errtra
      if(i8.ne.i88) call errtra
      if(r.ne.rr) call errtra
      if(d.ne.dd) call errtra
      if(q.ne.qq) call errtra
      end subroutine
      end
subroutine errtra
print *,'error'
end
