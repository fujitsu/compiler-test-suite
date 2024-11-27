type ty01
 sequence
 integer :: i01
end type
type (ty01) :: t1a(1)
contains
 subroutine csub01()
  type ty01
   sequence
   integer :: i01
  end type
  type (ty01) :: t1b(1)
  
  t1a = eoshift(t1a, 1, t1b(1))
  t1b = eoshift(t1b, 1, t1a(1))
  
  t1a = pack(t1a, (/.true./), t1b)
  t1b = pack(t1b, (/.true./), t1a)
  
  t1b = unpack(t1a, (/.true./), t1b)
  t1a = unpack(t1b, (/.true./), t1a)
  
  t1a = reshape(t1a, (/1/), t1b)
  t1b = reshape(t1b, (/1/), t1a)
  
  t1a = merge(t1a, t1b, .true. )
  t1b = merge(t1a, t1b, .false.)
  t1b = merge(t1b, t1a, .true. )
  t1a = merge(t1b, t1a, .false.)
 end subroutine
end
