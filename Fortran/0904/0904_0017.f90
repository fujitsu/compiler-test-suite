type ty
        integer :: ii
end type ty

type ty2
            type(ty),allocatable  :: xx[:]

end type ty2



type ty3

    
type(ty2) ::xyz

end type ty3


type(ty2) ::kk,jj
type(ty3) ::qq



kk = jj
qq%xyz = jj








    end 
