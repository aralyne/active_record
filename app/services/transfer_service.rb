class TransferService
  def initialize(user, company, amount_cents)
    @user = User.find(user)
    @company = Company.find(company)
    @amount_cents = amount_cents

    perform
  end

  def perform
    raise ActiveRecord::RecordInvalid unless @amount_cents.is_a? integer

    ActiveRecord::Base.transaction do
      @user.update!(balance_cents: @user.balance_cents + @amount_cents) #(!) Se não executar, retorne uma exception. Uma trasaction depende de uma transaction
      @company.update!(balance_cents: @user.balance_cents - @amount_cents)

      Transfer.transaction do
        Transfer.create!(balance_cents: @amount_cents, user: @user, company: @company)
      end
    end
  rescue ActiveRecord::RecordInvalid
    puts 'Valor inválido'
  end
end
