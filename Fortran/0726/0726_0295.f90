 call s1
 print *,'pass'
 end
  module m1
    type a
      integer,dimension(:,:),pointer::a1
      type(a),dimension(:,:),pointer::ap
    end type
    type(a),dimension(:,:),pointer::ap
    type(a),dimension(3,6),target ::at
    integer,dimension(2,3),target ::ai
    integer::i2=2,i3=3
    contains
      function af(p)
       type(a),dimension(:,:),pointer::af,p
       af=>p
      end function
subroutine ss1
 allocate(ap(2,3))
 ap=>at
 write(73,*) associated(ap)
 ap=>ap(1::2,1::2)
 ap=>af(ap)
 allocate(ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
  end subroutine
  end
subroutine s1
 use m1
 allocate(ap(2,3))
 ap=>at
 write(73,*) associated(ap)
 ap=>ap(1::2,1::2)
 ap=>af(ap)
 allocate(ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap,at(1::i2,1::i2))
 ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 allocate(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(i2,i3))
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>at
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap,at(1::i2,1::i2))
 write(73,*) associated(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap(1::2,1::2)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap)
 ap          =>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap)
 ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap=>af(ap(i2,i3)%ap(i2,i3)%ap(i2,i3)%ap)
end
