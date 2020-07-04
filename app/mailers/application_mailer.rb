# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  include WithPdf

  layout 'mailer'

  def sample_pdf sample
    attachments['sample.pdf'] = generate_pdf(sample)
    mail(
      subject: 'Sample PDF',
      to: 'sample@mailinator.com',
      from: 'sample@mailinator.com',
    )
  end
end
