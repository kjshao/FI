subroutine fi_a3(r,p)
! compute the fundamental invariants
! atom order : A A A
! r (input) real(kind=8) the internuclear distances
! p (output) real(kind=8) the fundamental invariants
implicit none
real(kind=8),intent(in) :: r(3)
real(kind=8),intent(out) :: p(3)
p(1)=r(1)+r(2)+r(3) 
p(2)=r(1)**2+r(2)**2+r(3)**2 
p(3)=r(1)**3+r(2)**3+r(3)**3 
end subroutine fi_a3
