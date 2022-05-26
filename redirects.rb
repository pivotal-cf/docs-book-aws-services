# Redirect all production http traffic to https
r301 %r{.*}, 'https://docs.pivotal.io$&', :if => Proc.new { |rack_env|
  rack_env['SERVER_NAME'] == 'docs.pivotal.io' && rack_env['HTTP_X_FORWARDED_PROTO'] == 'http'
}

# Redirect from docs.pivotal.io/aws-services/ to docs.vmware.com VMware Tanzu Service Broker for AWS docs
r301  %r{/aws-services/(.*)}, "https://docs.vmware.com/en/VMware-Tanzu-Service-Broker-for-AWS/1.4/documentation/GUID-$1"
r301  %r{/aws-services/}, "https://docs.vmware.com/en/VMware-Tanzu-Service-Broker-for-AWS/1.4/documentation/GUID-index.html"
r301  %r{/aws-services}, "https://docs.vmware.com/en/VMware-Tanzu-Service-Broker-for-AWS/1.4/documentation/GUID-index.html"
