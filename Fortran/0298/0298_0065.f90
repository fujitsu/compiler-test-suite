         module m1
         interface ss
          module procedure ai4
         end interface
         contains
         subroutine ai4(value,result)
         integer(4)::value(:)
         integer   ::result(:)
         print *,"value  = ",value
         print *,"result = ",result
         end subroutine
         end

         use m1
         integer(4) ::i2s=-11,i2a(2)=(/-12,-13/)
         integer(4) ::i4s=-21,i4a(2)=(/-22,-35/)
         call sx(i2s,i2a,i4s,i4a)
         contains
         subroutine sx(i2s,i2a,i4s,i4a)
         integer(4) ,optional::i2s,i2a(:)
         integer(4) ,optional::i4s,i4a(:)
         integer(4) ::x(2)
         x=min(i4a,i2s,i2a,i4s)
         print *,"x=",x
         call ss(x,-(/22,24/))
         end subroutine
         end
