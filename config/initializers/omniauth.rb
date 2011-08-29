Rails.application.config.middleware.use OmniAuth::Builder do
  provider :SAML, {
    :assertion_consumer_service_url => "http://...",
    :issuer                         => "https://...",
    :idp_sso_target_url             => "https://...",
    :idp_cert_fingerprint           => "E7:91:B2:E1:...",
    :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
  }
end