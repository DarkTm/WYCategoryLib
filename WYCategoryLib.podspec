
Pod::Spec.new do |s|
  s.name         = "WYCategoryLib"
  s.version      = "0.0.1"
  s.summary      = "日常用的类别库 WYCategoryLib."
  s.homepage     = "https://github.com/DarkTm/WYCategoryLib"
  s.license      = "MIT"
  s.author       = { "lt" => "365524764@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "http://EXAMPLE/WYCategoryLib.git", :tag => "v0.0.1" }
  s.source_files  = 'Classes', "WYCategoryLib/**/*.{h,m}"
  s.resources = "WYCategoryLib/Resources/WYCategoryLib.bundle"
  s.requires_arc = true
  # s.dependency "JSONKit", "~> 1.4"
end
