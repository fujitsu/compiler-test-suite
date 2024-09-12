 subroutine FSUB() BIND(C, NAME="Cfun")
          USE, INTRINSIC :: ISO_C_BINDING
          common /FSUB/ xx
      END
print *,'pass'
end
