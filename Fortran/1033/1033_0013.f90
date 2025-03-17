      type z
        integer,allocatable::za(:)
      end type
      type y1
        type(z),pointer::y1_zp
      end type
      type y2
        type(z)        ::y2_z
      end type
      type(y1)::yy1
      type(y2)::yy2
      integer,allocatable::aa(:)
      integer(8)::i1,i2

       allocate(yy2%y2_z%za(10))
       yy2%y2_z%za = (/1,2,3,4,5,6,7,8,9,10/)
       allocate(yy1%y1_zp)
       allocate(yy1%y1_zp%za(1))
       allocate(aa(1000))
       aa=888

       i1 = loc(yy1%y1_zp%za)
       yy1%y1_zp = yy2%y2_z
       i2 = loc(yy1%y1_zp%za)
       i3 = loc(yy2%y2_z%za)

       deallocate(yy2%y2_z%za)
       allocate(yy2%y2_z%za(1))
       yy2%y2_z%za(1)=1
       if (.not.allocated(yy1%y1_zp%za)) print *,'error-0'
       if (any(yy1%y1_zp%za/=(/1,2,3,4,5,6,7,8,9,10/))) &
           print *,'error-1',yy1%y1_zp%za
       if (i2==i3) print *,'error-3'
       if (any(aa/=888)) print *,'error-4'
       print *,'pass'
      end
