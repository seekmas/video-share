class UserMailer < ActionMailer::Base
  default from: "wujiayao1992041216@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.say_hi.subject
  #
  def say_hi(medium)
    @medium = medium

    mail(to: '446146366@qq.com' , subject: "视频#{@medium.subject}更新通知")
    mail(to: 'mwang@jingqi100.com' , subject: "视频#{@medium.subject}更新通知")
    mail(to: 'hhuang@jingqi100.com' , subject: "视频#{@medium.subject}更新通知")
    mail(to: 'mwu@jingqi100.com' , subject: "视频#{@medium.subject}更新通知").deliver
  end
end
