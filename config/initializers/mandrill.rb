ActionMailer::Base.smtp_settings = {
  address:    'smtp.mandrillapp.com',
  port:       '25',
  user_name:  'joan+1@entrision.com',
  password:   'B-np288rRL26UmIYFiM9Vg',
  authentication: :plain,
  domain: 'Lidealist.com',
  enable_starttls_auto: true
}
