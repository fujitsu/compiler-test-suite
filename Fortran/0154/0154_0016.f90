module m1
  external ATOMIC_DEFINE,ATOMIC_REF,CO_SUM,CO_MIN,CO_MAX
  external IMAGE_INDEX,LCOBOUND,NUM_IMAGES,THIS_IMAGE,UCOBOUND
end
use m1
k=0
if (k==1) then
call sub( &
   ATOMIC_DEFINE,ATOMIC_REF,CO_SUM,CO_MIN,CO_MAX, &
   IMAGE_INDEX,LCOBOUND,NUM_IMAGES,THIS_IMAGE,UCOBOUND)
endif
print *,'pass'
end
subroutine  sub( &
   ATOMIC_DEFINE,ATOMIC_REF,CO_SUM,CO_MIN,CO_MAX, &
   IMAGE_INDEX,LCOBOUND,NUM_IMAGES,THIS_IMAGE,UCOBOUND)
  external ATOMIC_DEFINE,ATOMIC_REF,CO_SUM,CO_MIN,CO_MAX
  external IMAGE_INDEX,LCOBOUND,NUM_IMAGES,THIS_IMAGE,UCOBOUND
end
subroutine ss
   entry ATOMIC_DEFINE
   entry ATOMIC_REF
   entry CO_SUM
   entry CO_MIN
   entry CO_MAX
   entry IMAGE_INDEX
   entry LCOBOUND
   entry NUM_IMAGES
   entry THIS_IMAGE
   entry UCOBOUND
end