integer,parameter :: n = 1
type element
    real::element_wt=0.0
    character(23), pointer :: name
end type element

type(element) chart(10)
real weights (10)
character(23), target :: names(10)

weights(1) = 0.4
weights(2) = 0.5
weights(3) = 0.6
weights(4) = 0.7
weights(5) = 0.6
weights(6) = 0.5
weights(7) = 0.4
weights(8) = 0.5
weights(9) = 0.6
weights(10) = 0.7

forall ( i=1:5, weights(i+n-1) > 0.5 )
    chart(i)%element_wt = weights(i+n-1)
    chart(i)%name => names(i+n-1)
endforall

if ( chart(1)%element_wt/=0.0 ) print *,'fail'
if ( chart(2)%element_wt/=0.0 ) print *,'fail'
if ( chart(3)%element_wt/=0.6 ) print *,'fail'
if ( chart(4)%element_wt/=0.7 ) print *,'fail'
if ( chart(5)%element_wt/=0.6 ) print *,'fail'
print *,'pass'
end
