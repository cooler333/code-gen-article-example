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
