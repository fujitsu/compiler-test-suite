integer :: xx
type ty
integer ,allocatable :: ii(:,:,:)
real ,allocatable :: rr(:,:,:)
logical ,allocatable :: ll(:,:,:)
character ,allocatable :: ch(:,:,:)
complex ,allocatable :: cmp(:,:,:)
end type

Interface 
        function fun(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value  :: dmy1(4,4,4)
        real,value  :: dmy2(4,4,4)
        logical,value  :: dmy3(4,4,4)
        character,value  :: dmy4(4,4,4)
        complex,value  :: dmy5(4,4,4)
        integer :: fun
        end function
end interface
type(ty) ,allocatable :: obj

Allocate(obj)
Allocate(obj%ii(4,4,4),obj%rr(4,4,4),obj%ll(4,4,4),obj%ch(4,4,4),obj%cmp(4,4,4))
obj%ii = 2
obj%rr = 3.3
obj%ll = .FALSE.
obj%ch = 'C'
obj%cmp = (4.4,5.5)

xx = fun(obj%ii,obj%rr,obj%ll,obj%ch,obj%cmp) 
if(xx /= 1) print *,xx
if(any(obj%ii /= 2))print *, 101
if(any(obj%rr < 3) .and. any(obj%rr > 4))print *, 102,obj%rr
if(any(obj%ll .neqv. .FALSE.))print *, 103
if(any(obj%ch /= 'C'))print *, 104
if(any(obj%cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
end
        function fun(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value  :: dmy1(4,4,4)
        real,value  :: dmy2(4,4,4)
        logical,value  :: dmy3(4,4,4)
        character,value  :: dmy4(4,4,4)
        complex,value  :: dmy5(4,4,4)
        integer ::  fun
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4) 
        fun = 1
        end function
