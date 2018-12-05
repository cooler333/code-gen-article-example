#
# Be sure to run `pod lib lint Settings.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Settings'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Settings.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'Local'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cooler333' => 'utm4@mail.ru' }
  s.source           = { :path => '*' }
  s.social_media_url = 'https://twitter.com/Cooler333'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Settings/Sources/**/*.swift'
  s.resources = 'Settings/Sources/**/*.{storyboard,xib,xcassets,strings}'

  # R.swift

  s.dependency 'R.swift'

  generated_file_path = "Settings/Sources/R.generated.swift"
  s.prepare_command = 
  <<-CMD
    touch "#{generated_file_path}"
  CMD

  r_swift_script = '"$PODS_ROOT/R.swift/rswift" generate "${PODS_TARGET_SRCROOT}/Settings/Sources" --accessLevel public'
  s.script_phases = [
    { 
      :name => 'R.swift',
      :script => r_swift_script, 
      :execution_position => :before_compile
    }
  ]

end
