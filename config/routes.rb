Rails.application.routes.draw do
  root to: 'pages#start'

  get 'method_test/:action', controller: 'method_test'
  post 'method_test/:action', controller: 'method_test'

  get 'binding_test/:action', controller: 'binding_test'
  get 'css_test/:action', controller: 'css_test'
  get 'error_test/:action', controller: 'error_test'
  post 'error_test/:action', controller: 'error_test'
  get 'replace_test/:action', controller: 'replace_test'
  get 'hash_test/:action', controller: 'hash_test'
  get 'reveal_test/:action', controller: 'reveal_test'
  get 'scroll_test/:action', controller: 'scroll_test'
  get 'motion_test/:action', controller: 'motion_test'
  get 'compiler_test/:action', controller: 'compiler_test'
  get 'boot_test/:action', controller: 'boot_test'
  get 'csp_test/:action', controller: 'csp_test'
  get 'feedback_test/:action', controller: 'feedback_test'
  get 'poll_test/:action', controller: 'poll_test'
  get 'kept_video_test/:action', controller: 'kept_video_test'
  get 'swapped_video_test/:action', controller: 'swapped_video_test'

  namespace :form_test do
    resource :basic, only: [:new, :create]
    resource :upload, only: [:new, :create]
    resource :validation, only: [:new, :create]
    resource :redirect, only: [:new, :create] do
      member do
        get :target
      end
    end


    resource :autosubmission, only: [:new, :create]
  end

end
