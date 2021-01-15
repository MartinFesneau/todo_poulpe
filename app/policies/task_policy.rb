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
    record.user == user
  end

  def edit?
    record.user == user
  end
  
  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def change_task_status?
    record.user = user
  end
end
