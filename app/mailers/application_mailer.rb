class ApplicationMailer < ActionMailer::Base
  default to: "ns00382@surrey.ac.uk", from: "nialljvs@gmail.com"
  layout 'mailer'
end
