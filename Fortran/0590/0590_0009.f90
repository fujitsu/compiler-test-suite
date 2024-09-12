module m1
type::ty
character(len=:),allocatable::msg(:)
end type

type::tt
type(ty)::objTY(2)
end type
  
contains
 subroutine s(msg1, k1, msg2, k2)
   integer :: k1, k2
   character(k1),value::msg1(:)
   character(k2),value::msg2(:)

   if (len(msg1(1)) /= 5) print *,301
   if (len(msg2(1)) /= 6) print *,302
   if (size(msg1) /= 3) print *,303
   if (size(msg2) /= 4) print *,304

   if (msg1(1) /= "HELLO") print *,202
   if (msg1(2) /= "HELLO") print *,203
   if (msg1(3) /= "HELLO") print *,204
   if (msg2(1) /= "abcdef") print *,205
   if (msg2(2) /= "abcdef") print *,206
   if (msg2(3) /= "abcdef") print *,207
   if (msg2(4) /= "abcdef") print *,208

   msg1 = "abcde"
   msg2 = "HELLOO"
 end subroutine
end
    
subroutine s1   
use m1
type(tt)::objTT
allocate(character(5)::objTT%objTY(1)%msg(3))
allocate(character(6)::objTT%objTY(2)%msg(4))

objTT%objTY(1)%msg = "HELLO"
objTT%objTY(2)%msg = "abcdef"

call s(objTT%objTY(1)%msg, len(objTT%objTY(1)%msg), objTT%objTY(2)%msg, len(objTT%objTY(2)%msg))

if (objTT%objTY(1)%msg(1) /= "HELLO") print *,101, objTT%objTY(1)%msg(1)
if (objTT%objTY(1)%msg(2) /= "HELLO") print *,102, objTT%objTY(1)%msg(2)
if (objTT%objTY(1)%msg(3) /= "HELLO") print *,103, objTT%objTY(1)%msg(3)
if (objTT%objTY(2)%msg(1) /= "abcdef") print *,104, objTT%objTY(2)%msg(1)
if (objTT%objTY(2)%msg(2) /= "abcdef") print *,105, objTT%objTY(2)%msg(2)
if (objTT%objTY(2)%msg(3) /= "abcdef") print *,106, objTT%objTY(2)%msg(3)
if (objTT%objTY(2)%msg(4) /= "abcdef") print *,107, objTT%objTY(2)%msg(4)
end
      
program pro

call s1
print *,"PASS"
end
