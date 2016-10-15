class CreatePlanService
  def call
    p1 = Stripe::Plan.create(
      name: "Monthly",
      amount: 900,
      interval: 'month',
      currency: 'usd',
      trial_period_days: 14,
      id: SecureRandom.uuid)
    byebug
  end
end
