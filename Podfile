platform :ios, '10.0'
use_frameworks!


def shared_pods
    pod 'R.swift', '~> 4.0.0'
    pod 'News', :path => 'LocalPods/News'
    pod 'Settings', :path => 'LocalPods/Settings'
end


target 'Example' do
    shared_pods
    
    target 'ExampleUnitTests' do
        inherit! :search_paths
    end
    
    target 'ExampleUITests' do
        inherit! :search_paths
    end
end


target 'Example.debug' do
    shared_pods
end


pre_install do |installer|
    # map development pods
    installer.development_pod_targets.each do |target|
        # map non test specs
        target.non_test_specs.each do |spec|
            # get full podspec file path
            podspec_file_path = spec.defined_in_file
            # get podspec dir path
            pod_directory = podspec_file_path.parent
            # go to pod root directorty and run prepare command in sub-shell
            system("cd \"#{pod_directory}\"; #{spec.prepare_command}")
        end
    end
end
