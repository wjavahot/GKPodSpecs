Pod::Spec.new do |s|
  s.name = 'GKLoggerFrameworks'
  s.version = '0.1.0'
  s.summary = 'GKLogger for log'
  s.license = { :type => "Copyright", :text => "GK 版权所有" }
  s.authors = {"gordon"=>"wjavahog@126.com"}
  s.homepage = 'https://github.com/wjavahot/GKFrameworks'
  s.description = 'The log library,it is require iOS version >=8.0'
  s.frameworks = ["UIKit", "Foundation"]
  s.source = { :git => "https://github.com/wjavahot/GKFrameworks.git", :tag => s.version.to_s }

  s.ios.deployment_target   = '8.0'
  s.default_subspec = 'GKLoggerLib'
    s.subspec "GKLoggerLib" do |bs|
      bs.vendored_frameworks = 'GKLoggerLib/GKLogger.framework' 
      bs.source_files        = 'GKLoggerLib/GKLogger.framework/Versions/**/*.h'
    end 

  s.xcconfig                = { "FRAMEWORK_SEARCH_PATHS" => "$(inherited)" }

end
