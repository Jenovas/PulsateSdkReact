
Pod::Spec.new do |s|
  s.name         = "RNPulsateSdkReact"
  s.version      = "1.0.36"
  s.summary      = "RNPulsateSdkReact"
  s.description  = <<-DESC
                  RNPulsateSdkReact
                   DESC
  s.homepage     = "https://pulsate.readme.io/v2.0/docs"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/author/RNPulsateSdkReact.git", :tag => "master" }
  s.source_files  = "RNPulsateSdkReact/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency 'PULPulsate'
  #s.dependency "others"

end

  