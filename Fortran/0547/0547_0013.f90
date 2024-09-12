module mod1
type parent
integer :: LL
contains
final :: finalparent_ty
end type

type base_1
integer :: kk
type(parent) :: obj_parent
contains
final :: finalbase1_ty
end type

type base
integer :: jj
type(base_1) :: obj_b1(2,2)
contains
final :: finalbase_ty
end type

type :: ty
integer :: ii
type(base) :: obj(3,2)
contains
final :: final_ty
end type

contains
subroutine finalparent_ty(dmy)
type(parent) :: dmy
write(1,*)"finalparent_ty",dmy%LL
end subroutine
subroutine finalbase1_ty(dmy)
type(base_1) :: dmy(2,2)
write(1,*)"finalbase1_ty",dmy%kk
end subroutine
subroutine finalbase_ty(dmy)
type(base) :: dmy(3,2)
write(1,*)"finalbase_ty",dmy%jj
end subroutine
subroutine final_ty(dmy)
type(ty) :: dmy(2,3)
write(1,*)"final_ty",dmy%ii
end subroutine
end module
use mod1
type(ty),pointer :: cptr(:,:)
type(ty),allocatable:: cptr1(:,:)
type(ty),target :: trg(2,3)
trg%ii = 20
trg(2,1)%ii = 50
trg(1,1)%obj%jj = 300
trg(2,1)%obj%jj = 310
trg(1,2)%obj%jj = 320
trg(2,2)%obj%jj = 330
trg(1,3)%obj%jj = 340
trg(2,3)%obj%jj = 350

trg(1,1)%obj%obj_b1(1,1)%kk = 4000
trg(1,1)%obj%obj_b1(2,1)%kk = 4001
trg(1,1)%obj%obj_b1(1,2)%kk = 4002
trg(1,1)%obj%obj_b1(2,2)%kk = 4003
trg(2,1)%obj%obj_b1(1,1)%kk = 4100
trg(2,1)%obj%obj_b1(2,1)%kk = 4101
trg(2,1)%obj%obj_b1(1,2)%kk = 4102
trg(2,1)%obj%obj_b1(2,2)%kk = 4103

trg(1,2)%obj%obj_b1(1,1)%kk = 4200
trg(1,2)%obj%obj_b1(2,1)%kk = 4201
trg(1,2)%obj%obj_b1(1,2)%kk = 4202
trg(1,2)%obj%obj_b1(2,2)%kk = 4203
trg(2,2)%obj%obj_b1(1,1)%kk = 4300
trg(2,2)%obj%obj_b1(2,1)%kk = 4301
trg(2,2)%obj%obj_b1(1,2)%kk = 4302
trg(2,2)%obj%obj_b1(2,2)%kk = 4303

trg(1,3)%obj%obj_b1(1,1)%kk = 4400
trg(1,3)%obj%obj_b1(2,1)%kk = 4401
trg(1,3)%obj%obj_b1(1,2)%kk = 4402
trg(1,3)%obj%obj_b1(2,2)%kk = 4403
trg(2,3)%obj%obj_b1(1,1)%kk = 4500
trg(2,3)%obj%obj_b1(2,1)%kk = 4501
trg(2,3)%obj%obj_b1(1,2)%kk = 4502
trg(2,3)%obj%obj_b1(2,2)%kk = 4503

trg(1,1)%obj(1,1)%jj = 301
trg(1,1)%obj(2,1)%jj = 302
trg(1,1)%obj(3,1)%jj = 303
trg(1,2)%obj(1,1)%jj = 311
trg(1,2)%obj(2,1)%jj = 312
trg(1,2)%obj(3,1)%jj = 313
trg(1,3)%obj(1,1)%jj = 322
trg(1,3)%obj(2,1)%jj = 323
trg(1,3)%obj(3,1)%jj = 324
trg(2,1)%obj(1,1)%jj = 331
trg(2,1)%obj(2,1)%jj = 332
trg(2,1)%obj(3,1)%jj = 333
trg(2,2)%obj(1,1)%jj = 341
trg(2,2)%obj(2,1)%jj = 342
trg(2,2)%obj(3,1)%jj = 343
trg(2,3)%obj(1,1)%jj = 351
trg(2,3)%obj(2,1)%jj = 352
trg(2,3)%obj(3,1)%jj = 353
trg(1,1)%obj(1,1)%obj_b1%kk = 401
trg(1,1)%obj(2,1)%obj_b1%kk = 402
trg(1,1)%obj(3,1)%obj_b1%kk = 403
trg(1,2)%obj(1,1)%obj_b1%kk = 411
trg(1,2)%obj(2,1)%obj_b1%kk = 412
trg(1,2)%obj(3,1)%obj_b1%kk = 413
trg(1,3)%obj(1,1)%obj_b1%kk = 421
trg(1,3)%obj(2,1)%obj_b1%kk = 422
trg(1,3)%obj(3,1)%obj_b1%kk = 423
trg(2,1)%obj(1,1)%obj_b1%kk = 431
trg(2,1)%obj(2,1)%obj_b1%kk = 432
trg(2,1)%obj(3,1)%obj_b1%kk = 433
trg(2,2)%obj(1,1)%obj_b1%kk = 441
trg(2,2)%obj(2,1)%obj_b1%kk = 442
trg(2,2)%obj(3,1)%obj_b1%kk = 443
trg(2,3)%obj(1,1)%obj_b1%kk = 451
trg(2,3)%obj(2,1)%obj_b1%kk = 452
trg(2,3)%obj(3,1)%obj_b1%kk = 453
trg(2,3)%obj(1,2)%obj_b1%kk = 454
trg(2,3)%obj(2,2)%obj_b1%kk = 455
trg(2,3)%obj(3,2)%obj_b1%kk = 456


trg(1,1)%obj(1,1)%obj_b1(1,1)%obj_parent%LL = 701
trg(1,1)%obj(1,1)%obj_b1(1,2)%obj_parent%LL = 704
trg(1,1)%obj(1,1)%obj_b1(2,1)%obj_parent%LL = 705
trg(1,1)%obj(1,1)%obj_b1(2,2)%obj_parent%LL = 706
trg(1,1)%obj(2,1)%obj_b1(1,1)%obj_parent%LL = 707
trg(1,1)%obj(2,1)%obj_b1(2,1)%obj_parent%LL = 708
trg(1,1)%obj(2,1)%obj_b1(1,2)%obj_parent%LL = 709
trg(1,1)%obj(2,1)%obj_b1(2,2)%obj_parent%LL = 710
trg(1,1)%obj(3,1)%obj_b1(1,1)%obj_parent%LL = 1710
trg(1,1)%obj(3,1)%obj_b1(2,1)%obj_parent%LL = 1711
trg(1,1)%obj(3,1)%obj_b1(1,2)%obj_parent%LL = 1712
trg(1,1)%obj(3,1)%obj_b1(2,2)%obj_parent%LL = 1713

trg(1,1)%obj(1,2)%obj_b1(1,1)%obj_parent%LL = 801
trg(1,1)%obj(1,2)%obj_b1(1,2)%obj_parent%LL = 804
trg(1,1)%obj(1,2)%obj_b1(2,1)%obj_parent%LL = 805
trg(1,1)%obj(1,2)%obj_b1(2,2)%obj_parent%LL = 806
trg(1,1)%obj(2,2)%obj_b1(1,1)%obj_parent%LL = 807
trg(1,1)%obj(2,2)%obj_b1(2,1)%obj_parent%LL = 808
trg(1,1)%obj(2,2)%obj_b1(1,2)%obj_parent%LL = 809
trg(1,1)%obj(2,2)%obj_b1(2,2)%obj_parent%LL = 810
trg(1,1)%obj(3,2)%obj_b1(1,1)%obj_parent%LL = 1810
trg(1,1)%obj(3,2)%obj_b1(2,1)%obj_parent%LL = 1811
trg(1,1)%obj(3,2)%obj_b1(1,2)%obj_parent%LL = 1812
trg(1,1)%obj(3,2)%obj_b1(2,2)%obj_parent%LL = 1813

trg(1,2)%obj(1,1)%obj_b1%obj_parent%LL = 711
trg(1,2)%obj(2,1)%obj_b1%obj_parent%LL = 712
trg(1,2)%obj(3,1)%obj_b1%obj_parent%LL = 713
trg(1,2)%obj(1,2)%obj_b1%obj_parent%LL = 7111
trg(1,2)%obj(2,2)%obj_b1%obj_parent%LL = 7121
trg(1,2)%obj(3,2)%obj_b1%obj_parent%LL = 7131

trg(1,3)%obj(1,1)%obj_b1%obj_parent%LL = 721
trg(1,3)%obj(2,1)%obj_b1%obj_parent%LL = 722
trg(1,3)%obj(3,1)%obj_b1%obj_parent%LL = 723
trg(1,3)%obj(1,2)%obj_b1%obj_parent%LL = 7211
trg(1,3)%obj(2,2)%obj_b1%obj_parent%LL = 7221
trg(1,3)%obj(3,2)%obj_b1%obj_parent%LL = 7231

trg(2,1)%obj(1,1)%obj_b1%obj_parent%LL = 731
trg(2,1)%obj(2,1)%obj_b1%obj_parent%LL = 732
trg(2,1)%obj(3,1)%obj_b1%obj_parent%LL = 733
trg(2,1)%obj(1,2)%obj_b1%obj_parent%LL = 7311
trg(2,1)%obj(2,2)%obj_b1%obj_parent%LL = 7321
trg(2,1)%obj(3,2)%obj_b1%obj_parent%LL = 7331

trg(2,2)%obj(1,1)%obj_b1%obj_parent%LL = 741
trg(2,2)%obj(2,1)%obj_b1%obj_parent%LL = 742
trg(2,2)%obj(3,1)%obj_b1%obj_parent%LL = 743
trg(2,2)%obj(1,2)%obj_b1%obj_parent%LL = 7411
trg(2,2)%obj(2,2)%obj_b1%obj_parent%LL = 7421
trg(2,2)%obj(3,2)%obj_b1%obj_parent%LL = 7431

trg(2,3)%obj(1,1)%obj_b1%obj_parent%LL = 751
trg(2,3)%obj(2,1)%obj_b1%obj_parent%LL = 752
trg(2,3)%obj(3,1)%obj_b1%obj_parent%LL = 753
trg(2,3)%obj(1,2)%obj_b1%obj_parent%LL = 7511
trg(2,3)%obj(2,2)%obj_b1%obj_parent%LL = 7521
trg(2,3)%obj(3,2)%obj_b1%obj_parent%LL = 7531

cptr=>trg
allocate(cptr1,source=cptr)
call final_ty(cptr1)

deallocate(cptr1)
print *,'pass'
end
