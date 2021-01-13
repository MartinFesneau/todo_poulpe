class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    true
  end

  def show?
    record.project.user == user
  end

  def update?
    record.project.user == user
  end

  def destroy?
    record.project.user == user
  end
end
