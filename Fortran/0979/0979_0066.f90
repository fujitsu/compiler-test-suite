module mod1
  integer,pointer,protected :: II1

  integer,protected,pointer :: II2

  integer,protected ::II3
   pointer :: II3

   pointer :: II4
  integer,protected ::II4

   protected :: II5
  integer,pointer ::II5

  integer,pointer ::II6
   protected :: II6
  
end module

use mod1
print *," pass"
end
