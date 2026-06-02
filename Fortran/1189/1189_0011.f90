subroutine s1(n)
 implicit none
 type :: base
 end type

 type, extends(base) :: ext
   real(8) :: d
 end type

 type :: struct_ty                                 ! 1)
   integer::   disp_00(4)
   integer::   disp_16_data(20)
   class(*   ), allocatable :: scalar    ! 2), 3)
   class(*   ), allocatable :: array(:)  ! 2), 3)
 end type 
 type :: ty 
   integer::   disp_00(4)
   integer::   disp_16_data(20)
   class(*   ), allocatable :: scalar  
   class(*   ), allocatable :: array(:) 
 end type
 integer::n
 type(ty)::v(n)

 type(ext)::e_var
 type(struct_ty)::var(n)
 real(8)::ddd=1.0D0
 character(:),allocatable::chs

chs='123'
var(n)%array = [chs,chs]
select type(p=>var(n)%array )
 type is(ext)
 type is(character(*))
  if (any(p            /='123')) print *,27582
 class default
    print *,'error-202'
end select

chs='123'
var(n)%scalar= chs
select type(p=>var(n)%scalar)
 type is(ext)
 type is(character(*))
  if (p            /='123') print *,27282
 class default
    print *,'error-201'
end select


var(n)%scalar= 1
select type(p=>var(n)%scalar)
 type is(ext)
 type is(integer)
  if (p            /=1) print *,2728
 class default
    print *,'error-2'
end select

chs='123'
var(n)%scalar= chs(:)
select type(p=>var(n)%scalar)
 type is(ext)
 type is(character(*))
  if (p            /='123') print *,22282
 class default
    print *,'error-202'
end select

var(n)%disp_16_data=1

var(n)%scalar = ext(ddd) ! 4), 5), 6), 7-1-1), 7-1-2), 7-1-3), 7-1-4-2)

if (any(var(n)%disp_16_data/=1)) print *,'error-1',var(n)%disp_16_data

select type(p=>var(n)%scalar)
 type is(ext)
 class default
    print *,'error-2'
end select

var(n)%disp_16_data=1
e_var=ext(ddd)

var(n)%array = [e_var,e_var]  ! 4), 5), 6), 7-2-1), 7-2-2), 7-2-3-3)

if (any(var(n)%disp_16_data/=1)) print *,'error-3',var(n)%disp_16_data

select type(p=>var(n)%array)
 type is(ext)
 class default
    print *,'error-4'
end select

deallocate(var(n)%scalar)
allocate(v(n)%array(n:3),source= [e_var,e_var])
var(n)%disp_16_data=1
var(n)%scalar = v(n)%array(n)

if (any(var(n)%disp_16_data/=1)) print *,'error-11',var(n)%disp_16_data

select type(p=>var(n)%scalar)
 type is(ext)
   if (p%d/=1) print *,2828
 class default
    print *,'error-22'
end select

deallocate(var(n)%scalar)
allocate(v(n)%scalar,source= e_var)
var(n)%disp_16_data=1
var(n)%scalar = v(n)%scalar 

if (any(var(n)%disp_16_data/=1)) print *,'error-12',var(n)%disp_16_data

select type(p=>var(n)%scalar)
 type is(ext)
   if (p%d/=1) print *,28281
 class default
    print *,'error-23'
end select

deallocate(var(n)%array)
var(n)%disp_16_data=1

var(n)%array = v(n)%array

if (any(var(n)%disp_16_data/=1)) print *,'error-31',var(n)%disp_16_data

if (lbound(v  (n)%array,1)/=n) print *,3929
if (lbound(var(n)%array,1)/=n) print *,2929
select type(p=>var(n)%array)
 type is(ext)
   if (any(p%d/=1)) print *,38281
 class default
    print *,'error-41'
end select

deallocate(var(n)%array)
var(n)%disp_16_data=1

var(n)%array = v(n)%array(:)

if (lbound(v  (n)%array,1)/=2) print *,39292
if (lbound(var(n)%array,1)/=1) print *,29292
if (any(var(n)%disp_16_data/=1)) print *,'error-32',var(n)%disp_16_data

select type(p=>var(n)%array)
 type is(ext)
   if (any(p%d/=1)) print *,38282
 class default
    print *,'error-42'
end select

end
call s1(2)
print *,'sngg565r : pass'
end program
