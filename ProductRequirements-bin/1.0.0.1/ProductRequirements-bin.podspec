Pod::Spec.new do |s|
  s.name                        = 'ProductRequirements-bin'
  s.version                     = '1.0.0.1'
  s.summary                     = 'A library containing product requirements generated from Rational/Github.'
  s.module_name                 = 'ProductRequirements'
  s.homepage                    = 'https://github.com/dexcom-inc/Groot'
  s.license                     = 'Copyright (c) 2021 Dexcom'
  s.author                      = { 'Akash Jain and Jorge Lopez' => 'akash.jain@dexcom.com, jorge.lopez-cerpa@dexcom.com' }
  s.source = {
#     Update this when release strategy is finalized
    :http => "https://artifactory.dexcom.com:443/artifactory/pods-snapshot-local/Requirements/#{s.module_name}/#{s.version}/#{s.module_name}-#{s.version}.tgz",
    :type => 'tgz',
    :flatten => false
  }
  s.vendored_frameworks         = "#{s.module_name}.xcframework"

  s.ios.deployment_target       = '14.1'
  s.watchos.deployment_target   = '7.0'
end
