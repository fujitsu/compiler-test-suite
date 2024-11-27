type z
  sequence
  integer(4),allocatable,dimension(:)::za
end type
type w
  sequence
  type(z)   ,allocatable,dimension(:)::wza
end type


type  (w)               ,dimension(1)::aa

  aa=w(funcz())
  if (any(aa(1)%wza(1)%za/=(/1,2,3/)))write(6,*) "NG"
print *,'pass'
contains

  function funcz() result(zz)
   type z
    sequence
    integer(4),allocatable,dimension(:)::za
   end type
   type  (z)   ,allocatable,dimension(:)::zz
   integer(4)         ,dimension(3)::i4
     allocate(zz(1))
i4(1)=1;i4(2)=2;i4(3)=3
    zz=z(i4)
  end function

end program

