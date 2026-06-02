module m1
     type ty
       integer::x1(2)
     end type
contains
  pure function xf(d) result(r)
     integer,allocatable,intent(in)  :: d(:)
     integer::r
     r=size(d)
  end function
  pure function yf(d) result(r)
     character(*),allocatable,intent(in)  :: d(:)
     integer::r
     r=size(d)
  end function
  pure function zf(d) result(r)
     type(ty),intent(in)  :: d(:)
     integer::r
     r=size(d)
  end function
end
use m1
   integer::r
     integer::kk(2)=[1,2]
     type(ty),allocatable  :: z1(:)
     type (ty) :: y1(2)

     allocate(z1(2))
     y1=ty( kk )
     z1=y1
     if(zf(z1) /= 2) print*,"121"
     associate(p=>z1)
        block
          integer::a(zf(p))
          integer::b(size([character(zf(p))::'123','4']))
          character(len([character(zf(p))::'123','4']))::&
            c(size([character(zf(p))::'123','4']))
        if(zf(p) /= 2) print*,"122"
        if(size(a) /= 2) print*,"123"
        if(size(b) /= 2) print*,"124"
        if(size(c) /= 2) print*,"125"
        if(len (c) /= 2) print*,"126"
        if(size([character(zf(p))::'123','4']) /= 2) print*,"223"
        if(len ([character(zf(p))::'123','4']) /= 2) print*,"223"
        end block
     end associate
     print *,'sngg961q : pass'
    end
