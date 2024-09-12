module mod
integer,dimension(3:*,*) ,parameter :: arr1=reshape([1,2,3,4,5,6],[2,3])
integer,dimension(2,3) ,parameter :: arr2=reshape([1,2,3,4,5,6],[2,3])
end
module moda
use mod,only:arr3=>arr1
end
use moda,only:arr4=>arr3
use mod,only:arr3=>arr1
use mod,arr5=>arr2
if (1.eq.2)print *,arr3
if     (lbound(arr3,1).ne.3) print *,'err'
if     (ubound(arr3,1).ne.4) print *,'err'
if     (lbound(arr3,2).ne.1) print *,'err'
if     (ubound(arr3,2).ne.3) print *,'err'
if     (ANY(arr3.ne.reshape([1,2,3,4,5,6],[2,3]))) print *,'err'
if (1.eq.2)print *,arr4
if (1.eq.2)print *,arr5
print *,'pass'
end
