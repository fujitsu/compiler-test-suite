integer,parameter :: ipara_size = 5
integer,parameter :: ipara_len  = 3
integer           :: i_normal, i_normal2,i_normal3

character            :: st1(ipara_size), st3(ipara_size)
character(ipara_len) :: st2(ipara_size), st4(ipara_size)

i_normal  = 3
i_normal2 = 3
i_normal3 = 1

st1 = [character :: 'a', ('bc', 'def', n = 1, 1), 'ghij', 'klmno']

if (count(lge(st1, [character :: ('a', 'bc', 'def', 'ghij', 'klmno', n = 1, 1)])).ne.size(st1)) print *,'fail'
if (count(lle(st1, [('a', 'b', 'd', 'g', 'k', n = 1, 1)])).ne.size(st1)) print *,'fail'

st2 = [character(len(st2)) :: 'ab', ('cde', 'fghi', n = 1, 2)]

if (count(lge(st2, ['ab ', 'cde', 'fgh', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'
if (count(lle(st2, [character(ipara_len) :: 'ab', 'cdef', 'fghi', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'

st3 = [character :: st2]

if (count(lge(st3, [character(i_normal3) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
if (count(lle(st3, [character(i_normal - 2) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'

st4 = [character(len(st4)) :: st1]

do i = 1, size(st4)
 if (trim(st4(i)).ne.st1(i)) print *,'fail'
end do

 call sub_ac(ipara_size, ipara_len)
 call sub_ac2(ipara_size, 1 + i_normal2 - 1)

print *,'pass'

contains

 subroutine sub_ac(dummy_size, dummy_len)
  integer :: dummy_size
  integer :: dummy_len

  integer :: i_normal,i_normal2

  character            :: st1(dummy_size), st3(dummy_size)
  character(dummy_len) :: st2(dummy_size), st4(dummy_size)

  i_normal = 3
  i_normal2 = 1

  st1 = [character :: 'a', ('bc', 'def', n = 1, 1), 'ghij', 'klmno']

  if (count(lge(st1, [character :: ('a', 'bc', 'def', 'ghij', 'klmno', n = 1, 1)])).ne.size(st1)) print *,'fail'
  if (count(lle(st1, [('a', 'b', 'd', 'g', 'k', n = 1, 1)])).ne.size(st1)) print *,'fail'

  st2 = [character(len(st2)) :: 'ab', ('cde', 'fghi', n = 1, 2)]

  if (count(lge(st2, ['ab ', 'cde', 'fgh', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'
  if (count(lle(st2, [character(dummy_len) :: 'ab', 'cdef', 'fghi', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'

  st3 = [character :: st2]

  if (count(lge(st3, [character(i_normal - 2) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
  if (count(lle(st3, [character(i_normal2) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'

  st4 = [character(len(st4)) :: st1]

  do i = 1, size(st4)
   if (trim(st4(i)).ne.st1(i)) print *,'fail'
  end do

 end subroutine

 subroutine sub_ac2(dummy_size, dummy_len)
  integer :: dummy_size
  integer :: dummy_len

  integer :: i_normal,i_normal2(3),i_normal3(3)

  character            :: st1(dummy_size), st3(dummy_size)
  character(dummy_len) :: st2(dummy_size), st4(dummy_size)

  i_normal = 3
  i_normal2 = 1
  i_normal3 = 1

  st1 = [character :: 'a', ('bc', 'def', n = 1, 1), 'ghij', 'klmno']

  if (count(lge(st1, [character :: ('a', 'bc', 'def', 'ghij', 'klmno', n = 1, 1)])).ne.size(st1)) print *,'fail'
  if (count(lle(st1, [('a', 'b', 'd', 'g', 'k', n = 1, 1)])).ne.size(st1)) print *,'fail'

  st2 = [character(len(st2)) :: 'ab', ('cde', 'fghi', n = 1, 2)]

  if (count(lge(st2, ['ab ', 'cde', 'fgh', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'
  if (count(lle(st2, [character(dummy_len) :: 'ab', 'cdef', 'fghi', 'cde', 'fgh'])).ne.size(st2)) print *,'fail'

  st3 = [character :: st2]

  if (count(lge(st3, [character(i_normal - 2) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
  if (count(lle(st3, [character(1 + i_normal - 3) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
  if (count(lle(st3, [character(i_normal2(1)) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
  if (count(lle(st3, [character(1 + i_normal2(1) - 1) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'
  if (count(lle(st3, [character(1 + i_normal2(1) - 1 + i_normal3(1) - 1) :: 'ab cd', ('cde', 'fghi', n = 1, 2)])).ne.size(st3)) print *,'fail'

  st4 = [character(len(st4)) :: st1]

  do i = 1, size(st4)
   if (trim(st4(i)).ne.st1(i)) print *,'fail'
  end do

 end subroutine

end
