# Swift Collections Specs

The [**Swift Collections**](https://github.com/apple/swift-collections/) package developed by Apple is great, but it's only officially available using Swift Package Manager. While this is great for modern projects, this is a blocker for larger projects that still rely on CocoaPods and that don't want to bring in the burden of managing two differnet sources for dependencies.

If you want to use **Swift Collections**, but want to do so using CocoaPods, this Specs repository is for you!

```ruby
source 'https://github.com/liamnichols/swift-collections-specs'

target 'Global' do
  pod 'Collections', '~> 1.0.3'
end
```

## Why an entire Specs repository?

Swift Package Manager and CocoaPods work in different ways. A Swift Package can provide multiple producs each as individual targets however whereas a CocoaPods Podspec can only represent a single target, even if you consider the Subspecs feature.

Library maintainers who offer support for both Swift Package Manager and CocoaPods often do so by making compromises so that their repository is setup to work with both package managers efficiently.

Because the **Swift Collections** project isn't build with CocoaPods Subspecs in mind, we need to expose multiple Pods for each target in the project, some with dependencies on each other. Additionally, I don't want to push these pods to the CocoaPods trunk because I didn't author **Swift Collections** and without pushing them some kind of specs repo, you cannot define the dependnecies correctly.

Putting it all together, I decided that the best approach here is to use a custom specs repo instead. It's easy for me to manage, and it makes it relatively straightforward to use in your projects as well.

## Available Pods

In this Specs repository, each Pod defined is a target that is part of the official `SwiftCollections` Package. You can find the complete list below:

- [**1.0.3**](https://github.com/apple/swift-collections/tree/1.0.3)
  - **Collections**
  - **OrderedCollections**
  - **DequeModule**

## Issues

Feel free to raise issues in this repository however please note that I am only able to help with issues relating to the CocoaPods specific configuration.

If you have an issue with the Swift Collections package itself, you are better off [raising an issue over there](https://github.com/apple/swift-collections/issues/new).
