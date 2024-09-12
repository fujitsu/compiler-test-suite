interface
 function func1()
  integer :: func1
 end function
 function func2()
  interface
   function func1()
    integer :: func1
   end function
  end interface
  procedure(func1),pointer :: func2
 end function
end interface

type ty_data
 integer,pointer :: ip
end type
type ty_proc
 procedure(),pointer,nopass :: pp
end type

type (ty_data) :: tyd
type (ty_proc) :: typ

integer,pointer :: ip
integer,target  :: it

procedure(),pointer :: pp

external            :: ep
pointer             :: ep

ip     => null()
ep     => null()
pp     => null()
tyd%ip => null()
typ%pp => null()

if (associated(ip)    .neqv..false.) print *, 'data pointer variable       : default error'
if (associated(pp)    .neqv..false.) print *, 'procedure pointer variable  : default error'
if (associated(ep)    .neqv..false.) print *, 'external  pointer variable  : default error'
if (associated(tyd%ip).neqv..false.) print *, 'data pointer component      : default error'
if (associated(typ%pp).neqv..false.) print *, 'procedure pointer component : default error'

ip => it
pp => func1
ep => func1
tyd = ty_data(it)
typ = ty_proc(func1)

if (associated(ip)    .neqv..true.)  print *, 'data pointer variable       : assignment error'
if (associated(pp)    .neqv..true.)  print *, 'procedure pointer variable  : assignment error'
if (associated(ep)    .neqv..true.)  print *, 'external  pointer variable  : assignment error'
if (associated(tyd%ip).neqv..true.)  print *, 'data pointer component      : assignment error'
if (associated(typ%pp).neqv..true.)  print *, 'procedure pointer component : assignment error'

nullify(ip)
nullify(pp)
nullify(ep)
nullify(tyd%ip)
nullify(typ%pp)

if (associated(ip)    .neqv..false.) print *, 'data pointer variable       : nullify error'
if (associated(pp)    .neqv..false.) print *, 'procedure pointer variable  : nullify error'
if (associated(ep)    .neqv..false.) print *, 'external  pointer variable  : nullify error'
if (associated(tyd%ip).neqv..false.) print *, 'data pointer component      : nullify error'
if (associated(typ%pp).neqv..false.) print *, 'procedure pointer component : nullify error'

print *, 'pass'

end

function func1()
 integer :: func1
 func1 = 1
end function

function func2()
 interface
  function func1()
   integer :: func1
  end function
 end interface
 procedure(func1),pointer :: func2
 func2 => func1
end function
