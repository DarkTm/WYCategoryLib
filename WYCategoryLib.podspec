
Pod::Spec.new do |s|
  s.name         = "WYCategoryLib"
  s.version      = "0.0.1"
  s.summary      = "WYCategoryLib."
  s.homepage     = "https://github.com/DarkTm/WYCategoryLib.git"
  s.license      = "MIT"
  s.author       = { "lt" => "365524764@qq.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/DarkTm/WYCategoryLib.git", :tag => "v0.0.1" }
  s.source_files  = 'Classes', "WYCategoryLib/**/*.{h,m}"
  s.resources = "WYCategoryLib/Resources/WYCategoryLib.bundle"
  s.requires_arc = true
  s.dependency "MBProgressHUD", "~> 0.9"
end
