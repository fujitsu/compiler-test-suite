module junkmod
      INTERFACE G

SUBROUTINE S0(T)
  INTERFACE
    SUBROUTINE T
    END SUBROUTINE T
  END INTERFACE
END SUBROUTINE S0

SUBROUTINE S1(T)
  INTERFACE
    FUNCTION T()
    END FUNCTION T
  END INTERFACE
END SUBROUTINE S1

      END INTERFACE G

end module junkmod

SUBROUTINE S0(T)
  INTERFACE
    SUBROUTINE T
    END SUBROUTINE T
  END INTERFACE
write(*,*) ' In S0'
  call T
END SUBROUTINE S0

SUBROUTINE S1(T)
  INTERFACE
    FUNCTION T()
    END FUNCTION T
  END INTERFACE
write(*,*) ' In S1'
  write(*,*) T()
END SUBROUTINE S1

subroutine T0
   write(*,*) ' In T0'
end subroutine T0

function T1()
   T1 = 1
end function T1

program main
   use junkmod
interface
   subroutine T0
   end subroutine T0
end interface
interface
   function T1
   end function T1
end interface
   call G(T0)
   call G(T1)
end program main
