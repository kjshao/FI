subroutine fi_a2b(r,p)
! compute the fundamental invariants
! atom order : A A B
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(3)
real(kind=8),intent(out) :: p(3)
p(1)=r(2)+r(3) 
p(2)=r(2)**2+r(3)**2 
p(3)=r(1)
end subroutine fi_a2b
