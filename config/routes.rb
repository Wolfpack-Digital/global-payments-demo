Rails.application.routes.draw do
  resources :orders

  scope 'global_payments' do
    post 'paid'    => 'global_payments#paid',    as: :global_payments_paid
    post 'success' => 'global_payments#success', as: :global_payments_success
    post 'fail'    => 'global_payments#fail',    as: :global_payments_fail
  end
end
