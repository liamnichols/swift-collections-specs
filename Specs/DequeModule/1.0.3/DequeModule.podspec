Pod::Spec.new do |s|
  s.name = 'DequeModule'
  s.version = '1.0.3'

  s.summary = 'Commonly used data structures for Swift'
  s.homepage = 'https://github.com/apple/swift-collections'
  s.license = { :type => 'Apache', :file => 'LICENSE.txt' }
  s.author = 'Apple'
  s.source = { :git => 'https://github.com/apple/swift-collections.git', :tag => s.version.to_s }
  s.swift_version = '5.6'

  # TODO: Confirm if these match?
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '7'

  s.source_files = 'Sources/DequeModule/**/*.swift'
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Tests/DequeTests/**/*.swift'
    test_spec.dependency '_CollectionsTestSupport', '1.0.3'
  end
end
