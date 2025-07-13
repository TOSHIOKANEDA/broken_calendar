Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.font_src    :self, :https, :data
    policy.img_src     :self, :https, :data
    policy.object_src  :none

    # スクリプトの読み込み元として、自分自身、https、そしてjspmのCDNを許可します。
    # Railsが自動でnonceを追加してくれるため、importmapのインラインスクリプトも許可されます。
    policy.script_src  :self, :https, "https://ga.jspm.io"

    # スタイルの読み込み元として、自分自身、https、そしてjsdelivrのCDNを許可します。
    policy.style_src   :self, :https, "https://cdn.jsdelivr.net"

    # もしconnect-srcなどで他のドメインが必要な場合は、ここに追加します。
    # policy.connect_src :self, :https, "http://localhost:3035", "ws://localhost:3035" if Rails.env.development?
  end

  # Permitted importmap and inline scripts
  config.content_security_policy_nonce_generator = ->(request) { request.session.id.to_s }
  config.content_security_policy_nonce_directives = %w[script-src]
end
