MODULE m
  TYPE t(kind)
     INTEGER, KIND :: kind
     COMPLEX(kind) :: value
  END TYPE t
  INTERFACE taa
     module TYPE(t(16)) FUNCTION t2()
     END FUNCTION 
  END INTERFACE taa
CONTAINS
  module procedure t2
  END
END 
print *,'pass'
end
